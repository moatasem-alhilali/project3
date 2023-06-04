import '../../../../core/utils/export_subject.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BaseHome(
      titleAppBar: "Subjects",
      actions: const [
        About(),
      ],
      isBack: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsManager.main,
        elevation: 0,
        onPressed: () {
          NavigatorManager.navigateTo(
            context: context,
            page: AddSubjectScreen(),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      child: BodyViewSubject().animate().fade(duration: 500.ms),
    );
  }
}
