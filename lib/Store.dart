import 'StoreModel.dart';
import 'StoreCollection.dart';
import 'StoreBible.dart';
import 'StoreConfiguration.dart';

class Store extends StoreConfiguration with StoreCollection, StoreBible {
  static final Store _instance = new Store.internal();
  factory Store() => _instance;
  Store.internal();

  Future<bool> updateCollectionAvailable() async{
    return await getCollectionBookIdentify().then((CollectionBook book) async{
      await updateBible(book.available > 0).then((int e) async{
        book.available = e;
        await writeCollection();
      });
    });
  }
  Future<NAME> activeName() async{
    await this.bible.then((bible) async{
      await getCollectionBookIdentify().then((CollectionBook book) async{
        if (book.available < 1) {
          book.available++;
          await writeCollection();
        }
      });
    });
    this.testamentId = this.bookId > 39?2:1;
    return await this.getNames.then((e){
      return e.singleWhere((i)=>i.book == this.bookId,orElse: ()=>null);
    });
  }

  Future<List<Map<String, dynamic>>>  testingBookmark() async {

    return await this.bookmark.then((e) async{

     List<NAME> names = await this.getNames;
     List<Map<String, dynamic>> list = [];
     for (var bookmark in e) {
       NAME book = names.singleWhere((i)=>i.book == bookmark.book,orElse: ()=>null);
      //  int index = bookName.indexWhere((i)=>i.id == bookmark.bookId && i.type == false);
       list.add(bookmark.toView(book.bookName));
     }
     return list;
    });
  }
}