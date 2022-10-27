class Task {
  String? id;
  String? taskText;
  bool isDone;

  Task({
    required this.id,
    required this.taskText,
    this.isDone = false,
  });

  static List<Task> listTask() {
    return [
      Task(
          id: '01',
          taskText:
              '(Dibuat pada 15 Oktober 2022) Desain Poster Welcome Party deadline 18 Oktober',
          isDone: true),
      Task(
          id: '02',
          taskText:
              '(Dibuat pada 16 Oktober 2022) Desain Feed IG Welcome Party deadline 19 Oktober',
          isDone: true),
      Task(
        id: '03',
        taskText: '(Dibuat pada 20 Oktober 2022) Mengisi Log Book',
      ),
      Task(
        id: '04',
        taskText:
            '(Dibuat pada 21 Oktober 2022) Tugas Mini Project presentasi 28 oktober',
      ),
      Task(
        id: '05',
        taskText:
            '(Dibuat pada 21 Oktober 2022) Rapat tanggal 25 oktober jam 7 malam',
      ),
      Task(
        id: '06',
        taskText:
            '(Dibuat pada 21 Oktober 2022) Tugas kewirausahaan deadline tanggal 25 Oktober',
      ),
    ];
  }
}
