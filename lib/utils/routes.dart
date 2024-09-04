import 'package:borderaccess/view/screens/bid_to_win_screen/screens/bidtowinscreen.dart';
import 'package:borderaccess/view/screens/daily_agenta/daily_agenta.dart';
import 'package:borderaccess/view/screens/dailybonus/screen/dailypollscreen.dart';
import 'package:borderaccess/view/screens/dailybonus/screen/instantopinionendscreen.dart';
import 'package:borderaccess/view/screens/dailybonus/screen/instantopinionscreen.dart';
import 'package:borderaccess/view/screens/dailybonus/screen/rankingpollendscreen.dart';
import 'package:borderaccess/view/screens/dailybonus/screen/rankingpollscreen.dart';
import 'package:borderaccess/view/screens/fun_wheel_screen/screens/funwheelscreen.dart';
import 'package:borderaccess/view/screens/lucky_jackpot_screen/screens/luckyjackpotscreen.dart';
import 'package:borderaccess/view/screens/onboarding/screen/onboaeding_welcomescreen.dart';
import 'package:borderaccess/view/screens/onboarding/screen/onboarding_priorityscreen.dart';
import 'package:borderaccess/view/screens/onboarding/screen/onboarding_screen.dart';
import 'package:borderaccess/view/screens/dashboard/dashboard.dart';
import 'package:borderaccess/view/screens/place_bid_screen/screens/placebidscreen.dart';
import 'package:borderaccess/view/screens/predict_and_win_screen/screens/predictandwinscreen.dart';
import 'package:borderaccess/view/screens/social_media_screen/screens/socialmediacontestscreen.dart';
import 'package:borderaccess/view/screens/splash/splashscreen.dart';
import 'package:borderaccess/view/screens/survey_hub_table/surveyHubTableScreen.dart';
import 'package:borderaccess/view/screens/userprofile/userprofile_screen.dart';
import 'package:go_router/go_router.dart';

import '../dummyScreen.dart';
import '../view/screens/auth_module/signin_screen/signin_screen.dart';
import '../view/screens/auth_module/signup_screen/screen/signup1_screen.dart';
import '../view/screens/auth_module/signup_screen/screen/signup2_screen.dart';
import '../view/screens/auth_module/signup_screen/screen/signup3_screen.dart';
import '../view/screens/onboarding/screen/onboarding_homepage.dart';
import '../view/screens/priority_profiler/screen/priority_profiler1.dart';
import '../view/screens/priority_profiler/screen/priority_profiler10.dart';
import '../view/screens/priority_profiler/screen/priority_profiler11.dart';
import '../view/screens/priority_profiler/screen/priority_profiler12.dart';
import '../view/screens/priority_profiler/screen/priority_profiler13.dart';
import '../view/screens/priority_profiler/screen/priority_profiler2.dart';
import '../view/screens/priority_profiler/screen/priority_profiler3.dart';
import '../view/screens/priority_profiler/screen/priority_profiler4.dart';
import '../view/screens/priority_profiler/screen/priority_profiler5.dart';
import '../view/screens/priority_profiler/screen/priority_profiler6.dart';
import '../view/screens/priority_profiler/screen/priority_profiler7.dart';
import '../view/screens/priority_profiler/screen/priority_profiler8.dart';
import '../view/screens/priority_profiler/screen/priority_profiler9.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
        path: '/onboardingpriority',
        builder: (context, state) => const OnboardingPriorityscreen()),

    GoRoute(
        path: '/signup3', builder: (context, state) => const Signup3Screen()),
    GoRoute(
        path: '/signup1', builder: (context, state) => const Signup1Screen()),
    GoRoute(
        path: '/signup2', builder: (context, state) => const Signup2Screen()),
    GoRoute(path: '/signin', builder: (context, state) => const SigninScreen()),
    GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingScreen()),
    GoRoute(
        path: '/onboardwelcome',
        builder: (context, state) => const OnboardingWelcomeScreen()),
         GoRoute(
        path: '/priorityprofiler4',
        builder: (context, state) => const PriorityProfiler4()),
        GoRoute(
        path: '/priorityprofiler5',
        builder: (context, state) => const PriorityProfiler5()),
         GoRoute(
        path: '/priorityprofiler6', builder: (context, state) => const PriorityProfiler6()),
         GoRoute(
        path: '/priorityprofiler7', builder: (context, state) => const PriorityProfiler7()),
         GoRoute(
        path: '/priorityprofiler8', builder: (context, state) => const PriorityProfiler8()),
         GoRoute(
        path: '/priorityprofiler9', builder: (context, state) => const PriorityProfiler9()),
         GoRoute(
        path: '/priorityprofiler10', builder: (context, state) => const PriorityProfiler10()),
         GoRoute(
        path: '/priorityprofiler11', builder: (context, state) => const PriorityProfiler11()),
         GoRoute(
        path: '/priorityprofiler12', builder: (context, state) => const PriorityProfiler12()),
        GoRoute(
        path: '/priorityprofiler13', builder: (context, state) => const PriorityProfiler13()),
        GoRoute(
        path: '/priorityprofiler3',
        builder: (context, state) => const PriorityProfiler3()),
     GoRoute(
        path: '/priorityprofiler1',
        builder: (context, state) => const PriorityProfiler1()),
        GoRoute(
        path: '/priorityprofiler2',
        builder: (context, state) => const PriorityProfiler2()),
    GoRoute(
        path: '/profile', builder: (context, state) => const ProfileScreen()),
    GoRoute(
        path: '/profiledetails',
        builder: (context, state) => const ProfileScreen()),
    GoRoute(path: '/dashboard', builder: (context, state) => const Dashboard()),

    GoRoute(
        path: '/dummyscreen', builder: (context, state) => const Dummyscreen()),
            GoRoute(
        path: '/onboardinghomepage', builder: (context, state) => const OnboardingHomepage()),
    GoRoute(
      path: '/surveyhubtable',
      builder: (context, state) => const Surveyhubtablescreen(),
    ),
    GoRoute(
      path: '/rankingpollscreen',
      builder: (context, state) => const Rankingpollscreen(),
    ),
    GoRoute(
      path: '/rankingpollendscreen',
      builder: (context, state) => const Rankingpollendscreen(),
    ),
    GoRoute(
      path: '/dailypollscreen',
      builder: (context, state) => const Dailypollscreen(),
    ),
    GoRoute(
      path: '/instantopinion',
      builder: (context, state) => const Instantopinionscreen(),
    ),
    GoRoute(
      path: '/instantopinionendscreen',
      builder: (context, state) => const Instantopinionendscreen(),
    ),
    // GoRoute(
    //   path: '/dailypollendscreen',
    //   builder: (context, state) => const PollResultsScreen(),
    // ),
     GoRoute(
      path: '/dailyagenta',
      builder: (context, state) => const DailyAgenta(),
    ),
    GoRoute(
      path: '/bidtowinscreen',
      builder: (context, state) => const Bidtowinscreen(),
    ),
    GoRoute(
      path: '/luckyjackpotscreen',
      builder: (context, state) => const Luckyjackpotscreen(),
    ),
    GoRoute(
      path: '/funwheelscreen',
      builder: (context, state) => const Funwheelscreen(),
    ),
    GoRoute(
      path: '/socialmediacontestscreen',
      builder: (context, state) => const Socialmediacontestscreen(),
    ),
    GoRoute(
      path: '/predictandwinscreen',
      builder: (context, state) => const Predictandwinscreen(),
    ),
    GoRoute(
      path: '/placebidscreen',
      builder: (context, state) => const Placebidscreen(),
    ),
    // GoRoute(
    //     path: '/helpScreen',
    //     builder: (context, state) => const HelpCategoriesScreen()),

    //    GoRoute(
    //   name: 'profile',
    //   path: '/profile/:imagePath',
    //   builder: (context, state) =>
    //       ProfileViewer(imagePath: state.pathParameters['imagePath']!),
    // ),
  ],
  // redirect: (context, state) async {
  //   var logged = await GetStorage().read('logged');
  //   if (logged == "true") {
  //     print('going to profile $logged');
  //     return '/profile'; // Return the route name as a string
  //   } else {
  //     print('going home');
  //     return '/'; // Return the route name for the home page
  //   }
  // },
);
