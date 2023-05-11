import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:ndialog/ndialog.dart';

import '../blocs/location_bloc.dart';
import '../routes/app_routes.dart';
import '../utils/constants.dart';
import '../widgets/custom_button.dart';
import 'package:geocoding/geocoding.dart' as geo;

import '../widgets/custom_placemark.dart';

class PickLocation extends StatefulWidget {
  const PickLocation({super.key});

  @override
  State<PickLocation> createState() => _PickLocationState();
}

class _PickLocationState extends State<PickLocation> {
  final selectLocation = const LatLng(-0.789275, 113.921327);

  late GoogleMapController mapController;

  late final Set<Marker> markers = {};

  geo.Placemark? placemark;

  double? _latitude;
  double? _longitude;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick Location"),
        elevation: 0,
        backgroundColor: kPrimary,
      ),
      body: Center(
        child: Stack(
          children: [
            GoogleMap(
              zoomControlsEnabled: false,
              initialCameraPosition: CameraPosition(
                zoom: 18,
                target: selectLocation,
              ),
              markers: markers,
              onMapCreated: (controller) async {
                final info = await geo.placemarkFromCoordinates(
                  selectLocation.latitude,
                  selectLocation.longitude,
                );

                final place = info[0];
                final street = place.street!;

                // address
                final subLocality = place.subLocality;
                final locality = place.locality;
                final postalCode = place.postalCode;
                final country = place.country;
                final address =
                    '$subLocality, $locality, $postalCode, $country';

                if (mounted) {
                  setState(() {
                    placemark = place;
                  });
                }

                defineMarker(selectLocation, street, address);

                if (mounted) {
                  setState(() {
                    mapController = controller;
                  });
                }
              },
              onTap: (LatLng latLng) => onLongPressGoogleMap(latLng),
              onLongPress: (LatLng latLng) => onLongPressGoogleMap(latLng),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: FloatingActionButton(
                backgroundColor: kPrimary,
                child: const Icon(
                  Icons.my_location,
                  color: kWhite,
                ),
                onPressed: () => onMyLocationButtonPress(),
              ),
            ),
            if (placemark == null)
              const SizedBox()
            else
              Positioned(
                bottom: 96,
                right: 16,
                left: 16,
                child: PlacemarkWidget(
                  placemark: placemark!,
                ),
              ),
            Positioned(
              bottom: 20,
              left: 16,
              right: 16,
              child: _longitude == null
                  ? CustomButton(
                      title: "Pilih Lokasi Sekarang",
                      onPressed: () {
                        NAlertDialog(
                          backgroundColor: kBackGroundColor,
                          dialogStyle: DialogStyle(
                            titleDivider: true,
                            titleTextStyle: kHeading6,
                          ),
                          title: Center(
                              child: Text(
                            "Warning!!!",
                            style: kHeading6.copyWith(color: kBlack),
                          )),
                          content: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                            child: Text(
                              "Kamu belum menentukan lokasi saat ini",
                              style: kSubtitle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          actions: [
                            TextButton(
                                child: const Text("Okay"),
                                onPressed: () => Navigator.pop(context)),
                          ],
                        ).show(context);
                      })
                  : CustomButton(
                      title: "Pilih Lokasi",
                      onPressed: () {
                        context.read<LocationBloc>().add(OnLocationSelected(
                              _longitude as double,
                              _latitude as double,
                            ));
                        router.pop();
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }

  void onLongPressGoogleMap(LatLng latLng) async {
    final info = await geo.placemarkFromCoordinates(
      latLng.latitude,
      latLng.longitude,
    );

    final place = info[0];
    final street = place.street!;
    final address =
        '${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';

    if (mounted) {
      setState(() {
        placemark = place;
        _latitude = latLng.latitude;
        _longitude = latLng.longitude;
      });
    }

    defineMarker(latLng, street, address);

    mapController.animateCamera(
      CameraUpdate.newLatLng(latLng),
    );
  }

  void onMyLocationButtonPress() async {
    final Location location = Location();
    late bool serviceEnabled;
    late PermissionStatus permissionGranted;
    late LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        // ignore: avoid_print
        print("Location services is not available");
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        // ignore: avoid_print
        print("Location permission is denied");
        return;
      }
    }

    locationData = await location.getLocation();
    final latLng = LatLng(locationData.latitude!, locationData.longitude!);

    final info =
        await geo.placemarkFromCoordinates(latLng.latitude, latLng.longitude);

    final place = info[0];
    final street = place.street!;
    final address =
        '${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';

    if (mounted) {
      setState(() {
        placemark = place;
        _latitude = latLng.latitude;
        _longitude = latLng.longitude;
      });
    }

    defineMarker(latLng, street, address);

    mapController.animateCamera(
      CameraUpdate.newLatLng(latLng),
    );
  }

  void defineMarker(LatLng latLng, String street, String address) {
    final marker = Marker(
      markerId: const MarkerId("source"),
      position: latLng,
      infoWindow: InfoWindow(
        title: street,
        snippet: address,
      ),
    );

    if (mounted) {
      setState(() {
        markers.clear();
        markers.add(marker);
      });
    }
  }
}
