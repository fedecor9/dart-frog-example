import 'package:my_project/interfaces/users_data_source.dart';
import 'package:my_project/models/user.dart' as model;
import 'package:my_project/src/generated/prisma/prisma_client.dart';

class UsersDbSource implements IUsersDataSource {
  UsersDbSource(this._prisma);
  final PrismaClient _prisma;
  @override
  void deleteUser(String id) {
    _prisma.user.delete(where: UserWhereUniqueInput(id: id));
  }

  @override
  Future<bool> existsUser(String identifier) async {
    final user = await _prisma.user
        .findUnique(where: UserWhereUniqueInput(email: identifier));

    return user != null;
  }

  @override
  Future<model.User?> getUser(String identifier) async {
    final user = await _prisma.user
        .findUniqueOrThrow(where: UserWhereUniqueInput(email: identifier));
    return model.User.fromJson(user.toJson());
  }

  @override
  Future<void> saveUser(model.User user) async {
    await _prisma.user.upsert(
      create: UserCreateInput(
        name: user.name,
        email: user.email,
        password: user.password,
      ),
      update: UserUpdateInput(
        name: StringFieldUpdateOperationsInput(set: user.name),
        email: StringFieldUpdateOperationsInput(set: user.email),
        password: StringFieldUpdateOperationsInput(set: user.password),
      ),
      where: UserWhereUniqueInput(email: user.email),
    );
  }

  @override
  // TODO: implement users
  Future<List<model.User>> get users async => (await _prisma.user.findMany())
      .map((e) => model.User.fromJson(e.toJson()))
      .toList();
}
