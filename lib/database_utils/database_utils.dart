import 'package:chat_c7_str/models/my_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseUtils {
  static CollectionReference<MyUser> getUsersCollection() {
    return FirebaseFirestore.instance
        .collection(MyUser.COLLECTION_NAME)
        .withConverter<MyUser>(
          fromFirestore: (snapshot, options) =>
              MyUser.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toJson(),
        );
  }

  static Future<void> AddUserToFirestore(MyUser user) async {
    return getUsersCollection().doc(user.id).set(user);
  }

  static Future<MyUser?> readUser(String id) async {
    DocumentSnapshot<MyUser> docSnapShot =
        await getUsersCollection().doc(id).get();
    var myUser = docSnapShot.data();
    return myUser;
  }
}
