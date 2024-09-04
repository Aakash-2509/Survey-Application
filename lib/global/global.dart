class Global {
  static const hostUrl = "http://182.74.71.249:302/api/psapi";

  //login api
  static const login = '/PanelistValidationMobileandDesktop';
  //signup api
  static const signup = '/signup';
  //forget api
  static const forget = '/ForgotPassword';
  //reset api
  static const reset = '/ChangePassword';
  //resendOtp Verification api
  static const resendOtpVerification = '/resendAccountVerification';
  // dash board screem api
  static const getnewsurvey = '/PanlistAvailableSurveyDatatable';
  // available Opinion Polls Questions.
  static const getOpinionpollQue = '/GetOpinionPollsQuestions';
  // check any other participant in another survey PopUp.
  static const checkSurveyPopup = '/CheckDynamicSurvey';
  // Click on Participant button of Participant PopUp API
  static const participatebutton = '/GetDynamicSurveyLink';
  // TPS App Update API
  static const updateApp ='/TPSAppUpdate';
  // Survey Badge By Panelist Id API
  static const displaybadge = '/SurveyBadgeByPanelistId';
  // Panelist User’s Device Version Info API
  static const installAppdeviceVersion = '/PanelistDeviceVersionSave';
  // Get Incentive Details Mobile API
  static const rewardHistory = '/GetIncentiveDetailsMobile';
  // Survey Points Review API
  static const surveyPointsReview = '/SurveyPointsReview';
  // Survey Points Rejected API
  static const surveyPointsRejects = '/SurveyPointsRejects';
  // Update/Remove User Profile API
  static const uploadImage  ='/UploadImage';
  // Display GDPR to User API
  static const  gdprPopup ='/PanelistConsentTextcheck';
  // Save GDPR of User API
  static const consentLogSave = '/ConsentLogSave';
  // API for notification list like Activity Logs
  static const notificationList = '/GetPanelistNotificationLog';
  // Save Opinion Polls API
  static const answerToQuickOpinion ='/SaveOpinionPolls';
  // Get Opinion Polls Result API
  static const getOpinionPollsResult = '/GetOpinionPollsResult';
  // Get Sweepstakes Details API
  static const getSweepstakes = '/GetSweepstakes';
  // Buy Ticket of Sweepstakes API
  static const buyTicketSweepstakes ='/BuyTicket';
  // Get Encrypt Mobile Number - GetEncryptString API
  static const getEncryptCall = '/GetEncryptString';
  // Get Misscall OTP API
  static const getEncryptOtp ='/GetMobileVerificationPin';
  // Save Panelist Mobile Number - Misscall OTP API
  static const savePanelistMobileNumber ='/SavePanelistMobileNumber';
  // Get SMS OTP API
  static const getMobileVerificationPin = '/GetMobileVerificationPin';
  // Save Mobile Number with SMS OTP API
  static const saveMobilewithOTP = '/SaveMobile';
  // Get Paytm & Paypal Ids API
  static const  getPanelistRedemptionOption =  '/GetPanelistRedemptionOption';
  // Get Panelist Redemption Option API
  static const generalRewardsNew = '/GeneralRewardsNew';
  // Redeem Voucher API
  static const generalRedeem = '/GeneralRedeem';
  // Get User Profile API
  static const userprofileInfo = '/GetPanelistprofilersinfo';
  // Get Questions/Answer of Campaign API
  static const queanstouserprofile = '/GetCampaignXml';
  // Save Answer of Campaign API
  static const savePanelistProfiler  = '/SavePanelistProfiler';
  // Get Contact Us Subject List API
  static const contactUsSubject = '/PanelistContactUS?CountryCode=IN&LanguageCulture=en-IN';
  // Send Contact Us Request API
  static const contactUs = '/ContactUs';
  // Get Survey Badges List Description API
  static const surveyBadgeDescription = '/SurveyBadgeDescription';
  // Get FAQ List of Panel API
  static const getPanelistFAQ = '/GetPanelistFAQ';
  // Save Language Culture API
  static const  languageCultureSave = '/LanguageCultureSave';
  // Get Communication Preferences API
  static const getPanelistCommunicationPreference = '/GetPanelistCommunicationPreference';
  // Changed Communication Preferences API
  static const savePanelistPreference = '/SavePanelistCommunicationPreference';
  // Get Privacy Policy Details API
  static const staticPageContent = '/StaticPageContent';
  // Get Terms & Condition Details API
  static const privacyPolicyContent = '/StaticPageContent';
  // Get Unsubscribe Reason(s) List API
  static const getUnsubscribeReason = '/UnSubscribeGet?LanguageCulture=en-IN';
  // Save Unsubscribe API
  static const unSubscribeSave = '/UnSubscribeSave';
  // Unsubscribe and Delete Account API
  static const unSubscribeDeleteSaveWeb = '/UnSubscribeDeleteSaveWeb';
  // Re-Subscribe API
  static const saveReSubscribe = '/UnSubscribeSave';
  // Logout User API
  static const panelistLogOut = '/PanelistLogOut';
  // Updated Dashboard Screen
  static const biddingBanner = '/BiddingBanner';
  // Bid To Win
  static const bidToWin = '/Bidding';
  // Register For Bid API
  static const biddingRegisterNow = '/BiddingRegisterNow';
  // Unregister For Bid API
  static const biddingUnRegisterNow = '/BiddingUnRegisterNow';
    // Bid Terms & Condition List Point For Bid API
  static const biddingTermsAndConditions = '/BiddingTermsAndConditions';
    // Join Now To Bid API
  static const biddingJoinNow = '/BiddingJoinNow';
    // Bid Detail API
  static const biddingDetails = '/BiddingDetails';
    // Bid Now API
  static const biddingBidsNow = '/BiddingBidsNow';
    // Bid Participants List API
  static const biddingParticipants = '/BiddingParticipants';
    // My Bid History List API
  static const biddingCoins = '/BiddingCoins';
    // Get Upcoming Bid List API
  static const upcomingBidding  = '/UpcomingBidding';
    // Notify Me to Upcoming Bid API
  static const biddingNotifyMe = '/BiddingNotifyMe';
    // Get Closed Bidding List API
  static const closedBidding = '/ClosedBidding';
    // Buy Coins API
  static const biddingBuyConinsNow = '/BiddingBuyConinsNow';
    // SendOTPMail
  static const sendOTPMail = '/SendOTPMail';
    // SaveRegistrationEmailLog API
  static const saveRegistrationEmailLog = '/SaveRegistrationEmailLog';
  // AutomaticSocialLogin API
  static const automaticSocialLogin = '/AutomaticSocialLogin';
  // SetNewPassword API
  static const setNewPassword = '/SetNewPassword';
  // ReferralCodeValidation API
  static const referralCodeValidation  = '/ReferralCodeValidation';
  // PanlistAvailableSurveyDatatableWebApp API
  static const datatableWebApp = '/PanlistAvailableSurveyDatatableWebApp';
  // ResetPasswordSave API
  static const resetPasswordSave = '/ResetPasswordSave';
  // ResubscribeDetailsSave API
  static const resubscribeDetailsSave = '/ResubscribeDetailsSave';
  // CarouselClicksTracking API
  static const carouselClicksTracking = '/CarouselClicksTracking';
  // ReferFriendTermsAndConditions API
  static const referFriendTermsAndConditions = '/ReferFriendTermsAndConditions';
  
}

class Specific {


 // Get Country Code API
static const  countryCode = 'https://cms-api.biz-buzz.com/api/get/countrycode?LanguageCulture=en-GB';

// Send OTP Via MissedCall API
  static const sendOTPMissedCall = 'https://api.checkmobi.com/v1/validation/request';

   // Verifying Missed Call OTP API
  static const verifyCallOTP = 'https://api.checkmobi.com/v1/validation/request';
 // Send SMS API
  static const senfSMSMobile = 'https://smsapi.24x7sms.com/api_2.0/SendSMS.aspx?APIKEY=ee92TQpOKQw&MobileNo=917992361838&SenderID=TPNLST&Message=Your TPS verification pin is 3245, Please enter the same toverify youraccount&ServiceName=TEMPLATE_BASED&DLTTemplateID=1307160984140368607';
 

}

class ServerRegister {
  static const SERVERREGISTERURL = "<SERVERREGISTERURL>";

      // Get LanguagebyCampaignId API
  static const  languagebyCampaignId = '/GetLanguagebyCampaignId';
  // ValidUserWithAdditionalCheck
  static const validUserWithAdditionalCheck = '/ValidUserWithAdditionalCheck';
    // GetCampaignXmlbyCampaignId API
  static const getCampaignXmlbyCampaignId = '/GetCampaignXmlbyCampaignId';
   // IMobileExists API
  static const mobileExists = '/IMobileExists';
 // RegisterPanelistwithCampaignIndia API
  static const registerPanelistwithCampaignIndia = '/RegisterPanelistwithCampaignIndia';
  // RegisterPanelistwithCampaignAfterSv API
  static const getSVID = '/RegisterPanelistwithCampaignAfterSv';


}