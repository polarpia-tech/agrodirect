import '../models/crop_model.dart';

class CropService {
  // Δοκιμαστικά δεδομένα καλλιεργειών (Mock Data) για να βλέπουμε αποτελέσματα
  List<CropModel> getMockCrops() {
    return [
      CropModel(
        id: '1',
        farmerUid: 'farmer_101',
        productName: 'Ντομάτες Βιολογικές',
        areaInAcre: 15.0,
        estimatedHarvestDate: DateTime.now().add(const Duration(days: 20)),
        estimatedQuantityTons: 12.5,
        status: 'growing',
        notes: 'Ποικιλία Elpida, καλή ανάπτυξη.',
      ),
      CropModel(
        id: '2',
        farmerUid: 'farmer_101',
        productName: 'Ελιές Καλαμών',
        areaInAcre: 40.0,
        estimatedHarvestDate: DateTime.now().add(const Duration(days: 90)),
        estimatedQuantityTons: 8.0,
        status: 'growing',
        notes: 'Προγραμματισμένη συγκομιδή για το φθινόπωρο.',
      ),
    ];
  }
}
