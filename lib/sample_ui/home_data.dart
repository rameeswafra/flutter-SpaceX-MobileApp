class HomeData {
  final String missionName;
  final String missionId;
  final String missionDetails;
  final DateTime date;
  final bool isSuccess;
  final String image;

  HomeData(
      {required this.missionName,
      required this.missionId,
      required this.missionDetails,
      required this.date,
      required this.isSuccess,
      required this.image});
}
