import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/post_model.dart';

abstract class IPostRemoteFirebase {
  Future<List<PostModel>> getAllPosts();
  Future<Unit> deletePost();
  Future<Unit> addPost(List<PostModel> postModels);
}

class PostRemoteFirebaseImp implements IPostRemoteFirebase {
  static final _fireStorePostCollection =
      FirebaseFirestore.instance.collection('posts');
  @override

  // FUNCTIONS TO GET ALLS
  Future<Unit> addPost(List<PostModel> postModels) async {
    List postModelsToJson = postModels
        .map<Map<String, dynamic>>((postModel) => postModel.toJson())
        .toList();

    postModelsToJson.forEach((postModel) async {
      final post =
          await _fireStorePostCollection.doc(postModel['id'].toString()).get();
      if (!post.exists) {
        await _fireStorePostCollection
            .doc(postModel['id'].toString())
            .set(postModel);
      }
    });

 
    return Future.value(unit);
  }

  @override

  // FUNCTIONS TO CLEAR ALL POSTS FROM FIREBASE
  Future<Unit> deletePost() {
    return _fireStorePostCollection.get().then((snapshot) {
      for (DocumentSnapshot ds in snapshot.docs) {
        ds.reference.delete();
      }
      return Future.value(unit);
    });
  }

  @override

  // FUNCTIONS TO GET ALL POSTS FROM FIREBASE
  Future<List<PostModel>> getAllPosts() {
    return _fireStorePostCollection.get().then((snapshot) {
      List<PostModel> postModels = [];
      for (DocumentSnapshot ds in snapshot.docs) {
        postModels.add(PostModel.fromJson(ds.data() as Map<String, dynamic>));
      }
      return Future.value(postModels);
    });
  }
}
