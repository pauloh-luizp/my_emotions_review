import 'package:my_emotions_review/models/emotions.model.dart';
import 'package:my_emotions_review/repositories/emotions.repository.dart';

class EmotionsController {
  List<Emotions> list = new List<Emotions>();
  EmotionsRepository repository = new EmotionsRepository();

  Future<void> getAll() async {
    try {
      final allList = await repository.readData();
      list.clear();
      list.addAll(allList);
    } catch (e) {
      print("Erro: " + e.toString());
    }
  }

  Future<void> create(Emotions emotion) async {
    try {
      list.add(emotion);
      await update();
    } catch (e) {
      print("Erro: " + e.toString());
    }
  }

  Future<void> delete(int id) async {
    try {
      list.removeAt(id);
      await update();
    } catch (e) {
      print("Erro: " + e.toString());
    }
  }

  void update() async {
    await repository.saveData(list);
    await getAll();
  }

  Future<void> updateList(List<Emotions> list) async {
    await repository.saveData(list);
    await getAll();
  }
}
