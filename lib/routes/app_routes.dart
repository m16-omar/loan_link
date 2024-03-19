import 'package:loan_link/presentation/splash_screen/splash_screen.dart';
import 'package:loan_link/presentation/splash_screen/binding/splash_binding.dart';
import 'package:loan_link/presentation/loan_limit_info_screen/loan_limit_info_screen.dart';
import 'package:loan_link/presentation/loan_limit_info_screen/binding/loan_limit_info_binding.dart';
import 'package:loan_link/presentation/onboard_one_screen/onboard_one_screen.dart';
import 'package:loan_link/presentation/onboard_one_screen/binding/onboard_one_binding.dart';
import 'package:loan_link/presentation/onboard_two_screen/onboard_two_screen.dart';
import 'package:loan_link/presentation/onboard_two_screen/binding/onboard_two_binding.dart';
import 'package:loan_link/presentation/log_in_screen/log_in_screen.dart';
import 'package:loan_link/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:loan_link/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:loan_link/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:loan_link/presentation/otp_screen/otp_screen.dart';
import 'package:loan_link/presentation/otp_screen/binding/otp_binding.dart';
import 'package:loan_link/presentation/role_selection_screen/role_selection_screen.dart';
import 'package:loan_link/presentation/role_selection_screen/binding/role_selection_binding.dart';
import 'package:loan_link/presentation/business_owner_info_screen/business_owner_info_screen.dart';
import 'package:loan_link/presentation/business_owner_info_screen/binding/business_owner_info_binding.dart';
import 'package:loan_link/presentation/business_info_screen/business_info_screen.dart';
import 'package:loan_link/presentation/business_info_screen/binding/business_info_binding.dart';
import 'package:loan_link/presentation/security_screen/security_screen.dart';
import 'package:loan_link/presentation/security_screen/binding/security_binding.dart';
import 'package:loan_link/presentation/borrower_home_empty_container_screen/borrower_home_empty_container_screen.dart';
import 'package:loan_link/presentation/borrower_home_empty_container_screen/binding/borrower_home_empty_container_binding.dart';
import 'package:loan_link/presentation/loan_request_one_screen/loan_request_one_screen.dart';
import 'package:loan_link/presentation/loan_request_one_screen/binding/loan_request_one_binding.dart';
import 'package:loan_link/presentation/loan_request_two_tab_container_screen/loan_request_two_tab_container_screen.dart';
import 'package:loan_link/presentation/loan_request_two_tab_container_screen/binding/loan_request_two_tab_container_binding.dart';
import 'package:loan_link/presentation/borrower_notification_tab_container_screen/borrower_notification_tab_container_screen.dart';
import 'package:loan_link/presentation/borrower_notification_tab_container_screen/binding/borrower_notification_tab_container_binding.dart';
import 'package:loan_link/presentation/lender_personal_info_screen/lender_personal_info_screen.dart';
import 'package:loan_link/presentation/lender_personal_info_screen/binding/lender_personal_info_binding.dart';
import 'package:loan_link/presentation/finance_info_screen/finance_info_screen.dart';
import 'package:loan_link/presentation/finance_info_screen/binding/finance_info_binding.dart';
import 'package:loan_link/presentation/personalized_goals_screen/personalized_goals_screen.dart';
import 'package:loan_link/presentation/personalized_goals_screen/binding/personalized_goals_binding.dart';
import 'package:loan_link/presentation/security_one_screen/security_one_screen.dart';
import 'package:loan_link/presentation/security_one_screen/binding/security_one_binding.dart';
import 'package:loan_link/presentation/lender_home_screen/lender_home_screen.dart';
import 'package:loan_link/presentation/lender_home_screen/binding/lender_home_binding.dart';
import 'package:loan_link/presentation/loan_listings_screen/loan_listings_screen.dart';
import 'package:loan_link/presentation/loan_listings_screen/binding/loan_listings_binding.dart';
import 'package:loan_link/presentation/loan_details_screen/loan_details_screen.dart';
import 'package:loan_link/presentation/loan_details_screen/binding/loan_details_binding.dart';
import 'package:loan_link/presentation/borrower_home_screen/borrower_home_screen.dart';
import 'package:loan_link/presentation/borrower_home_screen/binding/borrower_home_binding.dart';
import 'package:loan_link/presentation/loans_screen/loans_screen.dart';
import 'package:loan_link/presentation/loans_screen/binding/loans_binding.dart';
import 'package:loan_link/presentation/lender_home_empty_screen/lender_home_empty_screen.dart';
import 'package:loan_link/presentation/lender_home_empty_screen/binding/lender_home_empty_binding.dart';
import 'package:loan_link/presentation/profile_loan_listings_screen/profile_loan_listings_screen.dart';
import 'package:loan_link/presentation/profile_loan_listings_screen/binding/profile_loan_listings_binding.dart';
import 'package:loan_link/presentation/role_selection_one_screen/role_selection_one_screen.dart';
import 'package:loan_link/presentation/role_selection_one_screen/binding/role_selection_one_binding.dart';
import 'package:loan_link/presentation/fund_borrower_screen/fund_borrower_screen.dart';
import 'package:loan_link/presentation/fund_borrower_screen/binding/fund_borrower_binding.dart';
import 'package:loan_link/presentation/loan_funded_success_screen/loan_funded_success_screen.dart';
import 'package:loan_link/presentation/loan_funded_success_screen/binding/loan_funded_success_binding.dart';
import 'package:loan_link/presentation/loan_limit_info_one_screen/loan_limit_info_one_screen.dart';
import 'package:loan_link/presentation/loan_limit_info_one_screen/binding/loan_limit_info_one_binding.dart';
import 'package:loan_link/presentation/selfie_capture_instruction_screen/selfie_capture_instruction_screen.dart';
import 'package:loan_link/presentation/selfie_capture_instruction_screen/binding/selfie_capture_instruction_binding.dart';
import 'package:loan_link/presentation/selfie_capture_instruction_one_screen/selfie_capture_instruction_one_screen.dart';
import 'package:loan_link/presentation/selfie_capture_instruction_one_screen/binding/selfie_capture_instruction_one_binding.dart';
import 'package:loan_link/presentation/selfie_capture_success_three_screen/selfie_capture_success_three_screen.dart';
import 'package:loan_link/presentation/selfie_capture_success_three_screen/binding/selfie_capture_success_three_binding.dart';
import 'package:loan_link/presentation/selfie_capture_success_two_screen/selfie_capture_success_two_screen.dart';
import 'package:loan_link/presentation/selfie_capture_success_two_screen/binding/selfie_capture_success_two_binding.dart';
import 'package:loan_link/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:loan_link/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loanLimitInfoScreen = '/loan_limit_info_screen';

  static const String onboardOneScreen = '/onboard_one_screen';

  static const String onboardTwoScreen = '/onboard_two_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String otpScreen = '/otp_screen';

  static const String roleSelectionScreen = '/role_selection_screen';

  static const String businessOwnerInfoScreen = '/business_owner_info_screen';

  static const String businessInfoScreen = '/business_info_screen';

  static const String securityScreen = '/security_screen';

  static const String borrowerHomeEmptyPage = '/borrower_home_empty_page';

  static const String borrowerHomeEmptyContainerScreen =
      '/borrower_home_empty_container_screen';

  static const String loanRequestOneScreen = '/loan_request_one_screen';

  static const String loanRequestTwoPage = '/loan_request_two_page';

  static const String loanRequestTwoTabContainerScreen =
      '/loan_request_two_tab_container_screen';

  static const String loansEmptyPage = '/loans_empty_page';

  static const String borrowerNotificationPage = '/borrower_notification_page';

  static const String borrowerNotificationTabContainerScreen =
      '/borrower_notification_tab_container_screen';

  static const String lenderPersonalInfoScreen = '/lender_personal_info_screen';

  static const String financeInfoScreen = '/finance_info_screen';

  static const String personalizedGoalsScreen = '/personalized_goals_screen';

  static const String securityOneScreen = '/security_one_screen';

  static const String lenderHomeScreen = '/lender_home_screen';

  static const String loanListingsScreen = '/loan_listings_screen';

  static const String loanDetailsScreen = '/loan_details_screen';

  static const String lenderNotificationPage = '/lender_notification_page';

  static const String borrowerHomeScreen = '/borrower_home_screen';

  static const String loansScreen = '/loans_screen';

  static const String loanRequest2AgreedPage = '/loan_request_2_agreed_page';

  static const String loanlinkersOnePage = '/loanlinkers_one_page';

  static const String lenderHomeEmptyScreen = '/lender_home_empty_screen';

  static const String profileLoanListingsScreen =
      '/profile_loan_listings_screen';

  static const String roleSelectionOneScreen = '/role_selection_one_screen';

  static const String fundBorrowerScreen = '/fund_borrower_screen';

  static const String loanFundedSuccessScreen = '/loan_funded_success_screen';

  static const String loanLimitInfoOneScreen = '/loan_limit_info_one_screen';

  static const String selfieCaptureInstructionScreen =
      '/selfie_capture_instruction_screen';

  static const String loanlinkersPage = '/loanlinkers_page';

  static const String selfieCaptureInstructionOneScreen =
      '/selfie_capture_instruction_one_screen';

  static const String selfieCaptureSuccessThreeScreen =
      '/selfie_capture_success_three_screen';

  static const String selfieCaptureSuccessTwoScreen =
      '/selfie_capture_success_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loanLimitInfoScreen,
      page: () => LoanLimitInfoScreen(),
      bindings: [
        LoanLimitInfoBinding(),
      ],
    ),
    GetPage(
      name: onboardOneScreen,
      page: () => OnboardOneScreen(),
      bindings: [
        OnboardOneBinding(),
      ],
    ),
    GetPage(
      name: onboardTwoScreen,
      page: () => OnboardTwoScreen(),
      bindings: [
        OnboardTwoBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: roleSelectionScreen,
      page: () => RoleSelectionScreen(),
      bindings: [
        RoleSelectionBinding(),
      ],
    ),
    GetPage(
      name: businessOwnerInfoScreen,
      page: () => BusinessOwnerInfoScreen(),
      bindings: [
        BusinessOwnerInfoBinding(),
      ],
    ),
    GetPage(
      name: businessInfoScreen,
      page: () => BusinessInfoScreen(),
      bindings: [
        BusinessInfoBinding(),
      ],
    ),
    GetPage(
      name: securityScreen,
      page: () => SecurityScreen(),
      bindings: [
        SecurityBinding(),
      ],
    ),
    GetPage(
      name: borrowerHomeEmptyContainerScreen,
      page: () => BorrowerHomeEmptyContainerScreen(),
      bindings: [
        BorrowerHomeEmptyContainerBinding(),
      ],
    ),
    GetPage(
      name: loanRequestOneScreen,
      page: () => LoanRequestOneScreen(),
      bindings: [
        LoanRequestOneBinding(),
      ],
    ),
    GetPage(
      name: loanRequestTwoTabContainerScreen,
      page: () => LoanRequestTwoTabContainerScreen(),
      bindings: [
        LoanRequestTwoTabContainerBinding(),
      ],
    ),
    GetPage(
      name: borrowerNotificationTabContainerScreen,
      page: () => BorrowerNotificationTabContainerScreen(),
      bindings: [
        BorrowerNotificationTabContainerBinding(),
      ],
    ),
    GetPage(
      name: lenderPersonalInfoScreen,
      page: () => LenderPersonalInfoScreen(),
      bindings: [
        LenderPersonalInfoBinding(),
      ],
    ),
    GetPage(
      name: financeInfoScreen,
      page: () => FinanceInfoScreen(),
      bindings: [
        FinanceInfoBinding(),
      ],
    ),
    GetPage(
      name: personalizedGoalsScreen,
      page: () => PersonalizedGoalsScreen(),
      bindings: [
        PersonalizedGoalsBinding(),
      ],
    ),
    GetPage(
      name: securityOneScreen,
      page: () => SecurityOneScreen(),
      bindings: [
        SecurityOneBinding(),
      ],
    ),
    GetPage(
      name: lenderHomeScreen,
      page: () => LenderHomeScreen(),
      bindings: [
        LenderHomeBinding(),
      ],
    ),
    GetPage(
      name: loanListingsScreen,
      page: () => LoanListingsScreen(),
      bindings: [
        LoanListingsBinding(),
      ],
    ),
    GetPage(
      name: loanDetailsScreen,
      page: () => LoanDetailsScreen(),
      bindings: [
        LoanDetailsBinding(),
      ],
    ),
    GetPage(
      name: borrowerHomeScreen,
      page: () => BorrowerHomeScreen(),
      bindings: [
        BorrowerHomeBinding(),
      ],
    ),
    GetPage(
      name: loansScreen,
      page: () => LoansScreen(),
      bindings: [
        LoansBinding(),
      ],
    ),
    GetPage(
      name: lenderHomeEmptyScreen,
      page: () => LenderHomeEmptyScreen(),
      bindings: [
        LenderHomeEmptyBinding(),
      ],
    ),
    GetPage(
      name: profileLoanListingsScreen,
      page: () => ProfileLoanListingsScreen(),
      bindings: [
        ProfileLoanListingsBinding(),
      ],
    ),
    GetPage(
      name: roleSelectionOneScreen,
      page: () => RoleSelectionOneScreen(),
      bindings: [
        RoleSelectionOneBinding(),
      ],
    ),
    GetPage(
      name: fundBorrowerScreen,
      page: () => FundBorrowerScreen(),
      bindings: [
        FundBorrowerBinding(),
      ],
    ),
    GetPage(
      name: loanFundedSuccessScreen,
      page: () => LoanFundedSuccessScreen(),
      bindings: [
        LoanFundedSuccessBinding(),
      ],
    ),
    GetPage(
      name: loanLimitInfoOneScreen,
      page: () => LoanLimitInfoOneScreen(),
      bindings: [
        LoanLimitInfoOneBinding(),
      ],
    ),
    GetPage(
      name: selfieCaptureInstructionScreen,
      page: () => SelfieCaptureInstructionScreen(),
      bindings: [
        SelfieCaptureInstructionBinding(),
      ],
    ),
    GetPage(
      name: selfieCaptureInstructionOneScreen,
      page: () => SelfieCaptureInstructionOneScreen(),
      bindings: [
        SelfieCaptureInstructionOneBinding(),
      ],
    ),
    GetPage(
      name: selfieCaptureSuccessThreeScreen,
      page: () => SelfieCaptureSuccessThreeScreen(),
      bindings: [
        SelfieCaptureSuccessThreeBinding(),
      ],
    ),
    GetPage(
      name: selfieCaptureSuccessTwoScreen,
      page: () => SelfieCaptureSuccessTwoScreen(),
      bindings: [
        SelfieCaptureSuccessTwoBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
