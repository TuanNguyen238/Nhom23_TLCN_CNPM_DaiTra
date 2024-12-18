import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['vi', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? viText = '',
    String? enText = '',
  }) =>
      [viText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // resetPassword
  {
    '1z6s5g1r': {
      'vi': 'Thay đổi mật khẩu',
      'en': 'Change Password',
    },
    'fkl0ql53': {
      'vi': 'Mật khẩu hiện tại *',
      'en': 'Current Password *',
    },
    'xw6xt8q5': {
      'vi': 'Mật khẩu không đúng!!',
      'en': 'Password is incorrect!!',
    },
    'm7h4gh2i': {
      'vi': 'Mật khẩu mới *',
      'en': 'New Password *',
    },
    'jss5bxr7': {
      'vi': 'Xác nhận mật khẩu mới *',
      'en': 'Confirm new password *',
    },
    '6jidrlnh': {
      'vi': 'Mật khẩu không khớp!',
      'en': 'Passwords do not match!',
    },
    'bjcyn0y4': {
      'vi': 'Vui lòng nhập mật khẩu hiện tại!',
      'en': 'Please enter current password!',
    },
    'ljx2otzy': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'j8o4n1sh': {
      'vi': 'Vui lòng nhập mật khẩu mới!',
      'en': 'Please enter new password!',
    },
    'j9uo8vt2': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '8eahgqpz': {
      'vi': 'Vui lòng nhập mật khẩu xác nhận!',
      'en': 'Please enter confirmation password!',
    },
    '4o3bq5ey': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'g7ri95he': {
      'vi': 'Tiếp tục',
      'en': 'Continue',
    },
    'bnvr4p08': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // registerAccount
  {
    'fc4k0ead': {
      'vi': 'Đăng ký',
      'en': 'Register',
    },
    'tkzfr0fz': {
      'vi': 'Họ và tên *',
      'en': 'Full name *',
    },
    'j0q9cjyi': {
      'vi': 'SĐT đăng nhập *',
      'en': 'Login phone number *',
    },
    'pqggk9vm': {
      'vi': 'Email *',
      'en': 'Email *',
    },
    'cao3t9s2': {
      'vi': 'Căn cước công dân *',
      'en': 'Citizen ID *',
    },
    'it2btzfn': {
      'vi': ' Mật khẩu *',
      'en': 'Password *',
    },
    'lxl4npzu': {
      'vi': ' Xác nhận mật khẩu *',
      'en': 'Confirm Password *',
    },
    'jtrrtqd1': {
      'vi': 'Vui lòng nhập họ tên!',
      'en': 'Please enter your name!',
    },
    'pvgs1m7y': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'ol4drxnz': {
      'vi': 'Vui lòng nhập số điện thoại!',
      'en': 'Please enter phone number!',
    },
    '8c17h3zm': {
      'vi': 'Số điện thoại phải đúng 10 chữ số!!',
      'en': 'Phone number must be exactly 10 digits!!',
    },
    'g7dzs5a8': {
      'vi': 'Số điện thoại phải đúng 10 chữ số!!',
      'en': 'Phone number must be exactly 10 digits!!',
    },
    'wz3z188d': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'mmulrieb': {
      'vi': 'Vui lòng nhập email!',
      'en': 'Please enter email!',
    },
    'l9ekgcsd': {
      'vi': 'Email không đúng định dạng!',
      'en': 'Email is not in correct format!',
    },
    'i0430och': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '7qzz3nzk': {
      'vi': 'Vui lòng nhập CCCD!',
      'en': 'Please enter CCCD!',
    },
    'ufs5uk9s': {
      'vi': 'CCCD phải có đúng 12 chữ số!',
      'en': 'CCCD must have exactly 12 digits!',
    },
    'kmjtsvkg': {
      'vi': 'CCCD phải có đúng 12 chữ số!',
      'en': 'CCCD must have exactly 12 digits!',
    },
    'ylfuqjxx': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '6rou3h24': {
      'vi': 'Vui lòng nhập mật khẩu!',
      'en': 'Please enter password!',
    },
    'qir2lv7n': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    't8xmb15z': {
      'vi': 'Vui lòng nhập lại mật khẩu!',
      'en': 'Please re-enter password!',
    },
    'xsvq4dro': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '9qponhg5': {
      'vi': 'Mật khẩu không khớp!!',
      'en': 'Passwords do not match!!',
    },
    '4ywaz6bb': {
      'vi': 'Đăng ký',
      'en': 'Register',
    },
    'gnhg0f2l': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // detailNotificationAppointment
  {
    'xnzia3gp': {
      'vi': 'Thông tin cuộc hẹn',
      'en': 'Appointment information',
    },
    'ufve21x9': {
      'vi': '4 tháng trước',
      'en': '4 months ago',
    },
    '9evtyp8l': {
      'vi': 'Chi tiết cuộc hẹn',
      'en': 'Appointment details',
    },
    'chnlc660': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // listAppointment
  {
    'bvt9553y': {
      'vi': 'Danh sách cuộc hẹn',
      'en': 'Appointment List',
    },
    '5fh8t1p0': {
      'vi': 'Khám tim',
      'en': 'Heart exam',
    },
    'xkjl13sd': {
      'vi': 'Giờ khám',
      'en': 'Examination hours',
    },
    '4dz96rtl': {
      'vi': 'Địa điểm',
      'en': 'Location',
    },
    'sl89z0jk': {
      'vi': 'Trạng thái',
      'en': 'Status',
    },
    'w8nq182u': {
      'vi': 'Thanh toán',
      'en': 'Pay',
    },
    '6ql4386y': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // detailAppointment
  {
    'bf0ga196': {
      'vi': 'Thông tin cuộc hẹn',
      'en': 'Appointment information',
    },
    'ji9c591u': {
      'vi': 'Dịch vụ khám',
      'en': 'Medical examination services',
    },
    '3ctwgwpc': {
      'vi': 'Khám tim',
      'en': 'Heart exam',
    },
    'k0sshtia': {
      'vi': 'Mã cuộc hẹn',
      'en': 'Appointment code',
    },
    '7hp9zuh5': {
      'vi': 'Giờ khám',
      'en': 'Examination hours',
    },
    '93hw03w2': {
      'vi': 'Địa điểm',
      'en': 'Location',
    },
    'aocp86lb': {
      'vi': 'Trạng thái',
      'en': 'Status',
    },
    '3w6gx1nt': {
      'vi': 'Đã thực hiện',
      'en': 'Done',
    },
    '2qdeqx6j': {
      'vi': 'Giá',
      'en': 'Price',
    },
    'vmwkfb1f': {
      'vi': '150.000',
      'en': '150,000',
    },
    'sstgi6kt': {
      'vi': 'Thanh toán',
      'en': 'Pay',
    },
    's8rxgol6': {
      'vi': 'Số khám',
      'en': 'Examination number',
    },
    '4xyavvnr': {
      'vi': 'Nhấn vào số để nhận QR',
      'en': 'Click on the number to get QR',
    },
    'hugwua2h': {
      'vi': 'Chi tiết cuộc hẹn',
      'en': 'Appointment details',
    },
    'yh7gqltj': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // bookExamination
  {
    'xodwipct': {
      'vi': 'Chọn người khám',
      'en': 'Choose a patient',
    },
    '0oa7m5a9': {
      'vi': 'Thêm bệnh nhân',
      'en': 'Add patient',
    },
    'l2umju4n': {
      'vi': 'Tiếp tục',
      'en': 'Continue',
    },
    'u3sc12c7': {
      'vi': 'Vui lòng chọn bệnh nhân!',
      'en': 'Please select patient!',
    },
    'megwh692': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // infoBookAppointment
  {
    'ljzp2ef1': {
      'vi': 'Thông tin đặt khám',
      'en': 'Appointment information',
    },
    's8xgy1o3': {
      'vi': 'Ngày khám',
      'en': 'Examination date',
    },
    'acpjxpl3': {
      'vi': 'Lý do khám *',
      'en': 'Reason for examination *',
    },
    't94ugbe6': {
      'vi': 'Khung giờ khám',
      'en': 'Examination time frame',
    },
    '7x5z448l': {
      'vi': '07:00',
      'en': '07:00',
    },
    't0arvx19': {
      'vi': '07:30',
      'en': '07:30',
    },
    'eprg8kzq': {
      'vi': '08:00',
      'en': '08:00',
    },
    'rakerelt': {
      'vi': '08:30',
      'en': '08:30',
    },
    '6fgqtsz0': {
      'vi': '09:00',
      'en': '09:00',
    },
    '4v30lhqy': {
      'vi': '09:30',
      'en': '09:30',
    },
    'ky9scaft': {
      'vi': '10:00',
      'en': '10:00',
    },
    'jcrzfrzf': {
      'vi': '10:30',
      'en': '10:30',
    },
    'c0r1wg6r': {
      'vi': '11:00',
      'en': '11:00',
    },
    '2h0wawow': {
      'vi': '11:30',
      'en': '11:30',
    },
    'kx4cpbk5': {
      'vi': '13:00',
      'en': '13:00',
    },
    'nev6l6t5': {
      'vi': '13:30',
      'en': '13:30',
    },
    'rl97hgv9': {
      'vi': '14:00',
      'en': '14:00',
    },
    '3xlrb1ct': {
      'vi': '14:30',
      'en': '14:30',
    },
    '870tm54j': {
      'vi': '15:00',
      'en': '15:00',
    },
    'yzyir89g': {
      'vi': 'Giờ khám',
      'en': '',
    },
    'r44dqbdn': {
      'vi': 'Giờ khám',
      'en': '',
    },
    'pqzs8fqy': {
      'vi': 'Giá dịch vụ',
      'en': 'Service price',
    },
    'm8pxne8m': {
      'vi': '150.000 VNĐ',
      'en': '150,000 VND',
    },
    'hhh1817h': {
      'vi': 'XÁC NHẬN',
      'en': 'CONFIRM',
    },
    '2icgf381': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // createOldPatient
  {
    'krs3kwbo': {
      'vi':
          'Vui lòng nhập đầy đủ các thông tin để thêm BN. BN phải có SĐT hoặc SĐT người thân khi đăng ký BN để sử dụng hệ thồng.',
      'en':
          'Please fill in all information to add patient. Patient must have phone number or relative\'s phone number when registering patient to use the system.',
    },
    'wx7p43ec': {
      'vi': 'Mã bệnh nhân *',
      'en': 'Patient code *',
    },
    'no0k2x2s': {
      'vi': 'Nhập mã bệnh nhân',
      'en': 'Enter patient code',
    },
    '5jrjpald': {
      'vi': 'SĐT liên lạc bản thân hoặc người thân *',
      'en': 'Contact phone number for yourself or relatives *',
    },
    '6ogmkv7u': {
      'vi': 'Nhập SĐT liên lạc bản thân hoặc người thân *',
      'en': 'Enter your or your relative\'s contact phone number *',
    },
    'ntzrrgo1': {
      'vi': 'XÁC NHẬN',
      'en': 'CONFIRM',
    },
    'phdrz5c0': {
      'vi': 'Vui lòng nhập mã bệnh nhân!',
      'en': 'Please enter patient code!',
    },
    '2cnfycqu': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'j5awxqd0': {
      'vi': 'Vui lòng nhập số điện thoại!',
      'en': 'Please enter phone number!',
    },
    'hzk948qm': {
      'vi': 'Số điện thoại phải có đúng 10 số!',
      'en': 'Phone number must have exactly 10 digits!',
    },
    'yufvy0oo': {
      'vi': 'Số điện thoại phải có đúng 10 số!',
      'en': 'Phone number must have exactly 10 digits!',
    },
    'm5462jpb': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'jyosn07y': {
      'vi': 'Thêm bệnh nhân',
      'en': 'Add patient',
    },
    'lb7zxcf9': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // createNewPatient
  {
    '6ozwhj3p': {
      'vi': 'Tạo mới bệnh nhân',
      'en': 'Create new patient',
    },
    'epr4nyqt': {
      'vi': 'Họ và tên *',
      'en': 'Full name *',
    },
    'q7x60iba': {
      'vi': 'Nhập họ và tên',
      'en': 'Enter your first and last name',
    },
    '8wcreuy1': {
      'vi': 'SĐT liên lạc',
      'en': 'Contact phone number',
    },
    '4ck4t4ry': {
      'vi': 'Nhập SĐT liên lạc',
      'en': 'Enter contact phone number',
    },
    '570a26ij': {
      'vi': 'Chọn ngày sinh',
      'en': 'Select date of birth',
    },
    'bapzzuw3': {
      'vi': 'Chọn giới tính',
      'en': 'Select gender',
    },
    '6x1ix0qx': {
      'vi': 'Nam',
      'en': 'Male',
    },
    'rkvgrq85': {
      'vi': 'Nam',
      'en': 'Male',
    },
    '1cpflc80': {
      'vi': 'Nữ',
      'en': 'Female',
    },
    '4jgfrbky': {
      'vi': 'Giới tính *',
      'en': 'Gender *',
    },
    'dp70j9gd': {
      'vi': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'uanu9b77': {
      'vi': 'Số căn cước công dân *',
      'en': 'Citizen ID number *',
    },
    '6xxa9r7i': {
      'vi': 'Nhập số căn cước công dân',
      'en': 'Enter citizen identification number',
    },
    'nsye4f2i': {
      'vi': 'Địa chỉ nhà *',
      'en': 'Home address *',
    },
    'v7f19f11': {
      'vi': 'Nhập địa chỉ nhà cụ thể',
      'en': 'Enter specific home address',
    },
    'aubjt9nl': {
      'vi': 'Thông tin người thân',
      'en': 'Relatives information',
    },
    'v86k8q4u': {
      'vi': 'Họ và tên người thân *',
      'en': 'Full name of relative *',
    },
    'bxu4p9r7': {
      'vi': 'Nhập họ và tên người thân',
      'en': 'Enter your family name',
    },
    'd7c09nw7': {
      'vi': 'Địa chỉ người thân ',
      'en': 'Relatives\' address',
    },
    'iglz16cj': {
      'vi': 'Nhập địa chỉ người thân',
      'en': 'Enter relative\'s address',
    },
    'w0unvnye': {
      'vi': 'SĐT người thân',
      'en': 'Relatives phone number',
    },
    'ntwe0cx2': {
      'vi': 'Nhập SĐT người thân',
      'en': 'Enter your relative\'s phone number',
    },
    't3c512ar': {
      'vi': 'Quan hệ người thân',
      'en': 'Family relations',
    },
    '9cq9r7ms': {
      'vi': 'Vợ',
      'en': 'Wife',
    },
    'a057dgei': {
      'vi': 'Vợ',
      'en': 'Wife',
    },
    'glnqhd56': {
      'vi': 'Chồng',
      'en': 'Husband',
    },
    'ih8zjrdd': {
      'vi': 'Con',
      'en': 'Son',
    },
    'bb7gd8cr': {
      'vi': 'Cha',
      'en': 'Father',
    },
    'w1pqowb8': {
      'vi': 'Mẹ',
      'en': 'Mom',
    },
    'lc4hxv0r': {
      'vi': 'Anh',
      'en': 'Older brother',
    },
    '2voh2v2z': {
      'vi': 'Chị',
      'en': 'Older sister',
    },
    'xes4anuc': {
      'vi': 'Ông',
      'en': 'Grandfather',
    },
    '8s8s01jo': {
      'vi': 'Bà',
      'en': 'Grandma',
    },
    'daqda6fh': {
      'vi': 'Khác',
      'en': 'Other',
    },
    '9fjf8vwt': {
      'vi': 'Tìm kiếm',
      'en': 'Search',
    },
    'lyxmcpmu': {
      'vi': 'Vui lòng nhập họ tên! ',
      'en': 'Please enter your name!',
    },
    '1ppcr6pa': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '1j4kq52c': {
      'vi': 'Vui lòng nhập số điện thoại!',
      'en': 'Please enter phone number!',
    },
    't1kv6uap': {
      'vi': 'Số điện thoại phải có 10 chữ số!!',
      'en': 'Phone number must be 10 digits!!',
    },
    'itq4c502': {
      'vi': 'Số điện thoại phải có 10 chữ số!!',
      'en': 'Phone number must be 10 digits!!',
    },
    'skp28wqi': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'wri86fhe': {
      'vi': 'Vui lòng nhập số CCCD!',
      'en': 'Please enter your ID number!',
    },
    'g3vzjzi1': {
      'vi': 'Số CCCD phải có đúng 12 chữ số!!',
      'en': 'The CCCD number must have exactly 12 digits!!',
    },
    '6pa8gq5q': {
      'vi': 'Số CCCD phải có đúng 12 chữ số!!',
      'en': 'The CCCD number must have exactly 12 digits!!',
    },
    'd7cykatb': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '8hriaxjs': {
      'vi': 'Field is required',
      'en': 'Field is required',
    },
    'c24aeie1': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'oc1fqblm': {
      'vi': 'Vui lòng nhập tên người thân!',
      'en': 'Please enter your relative\'s name!',
    },
    'xsryecko': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'w6tkbjye': {
      'vi': 'Field is required',
      'en': 'Field is required',
    },
    'p5b0drdf': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'nzfjpu6s': {
      'vi': 'Field is required',
      'en': 'Field is required',
    },
    't62i0z68': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '0zq3olg4': {
      'vi': 'Lưu',
      'en': 'Save',
    },
    '9okzq7vc': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // getSTT
  {
    '20rrs91t': {
      'vi': 'Không có dữ liệu',
      'en': 'No data available',
    },
    'bkv70vu7': {
      'vi': 'Lấy STT',
      'en': 'Get STT',
    },
    'he6i530f': {
      'vi': 'Đăng ký',
      'en': 'Register',
    },
    'izw6vlcf': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // infoAccount
  {
    '0wzbr6ll': {
      'vi': 'Chỉnh sửa thông tin tài khoản',
      'en': 'Edit account information',
    },
    'sv68ivpf': {
      'vi': 'Họ và tên *',
      'en': 'Full name *',
    },
    '30pw07vc': {
      'vi': 'CCCD/CMND',
      'en': 'CCCD/CMND',
    },
    'vu4jsipq': {
      'vi': 'Email',
      'en': 'E-mail',
    },
    '0mkkcznm': {
      'vi': 'Lưu',
      'en': 'Save',
    },
    'u9ud9k2k': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // forgotPasswordPhoneNumber
  {
    'uulhmjhn': {
      'vi': 'Quên mật khẩu',
      'en': 'Forgot Password',
    },
    '8rs98kdo': {
      'vi': 'SĐT đăng nhập *',
      'en': 'Login phone number *',
    },
    '1xapul95': {
      'vi': 'Vui lòng nhập số điện thoại!',
      'en': 'Please enter phone number!',
    },
    'kq5q6q2x': {
      'vi': 'Số điện thoại phải có đúng 10 số!',
      'en': 'Phone number must have exactly 10 digits!',
    },
    't3cmydyg': {
      'vi': 'Số điện thoại phải có đúng 10 số!',
      'en': 'Phone number must have exactly 10 digits!',
    },
    'oypsp8mq': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'qsvbzyxz': {
      'vi': 'Xác nhận',
      'en': 'Confirm',
    },
    'gfd072hw': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // extensionExamination
  {
    'zlnkmfzq': {
      'vi': 'Lịch sử khám',
      'en': 'Medical history',
    },
    '68iswlex': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // historyExamination
  {
    'u9o3d4zv': {
      'vi': 'Hồ sơ bệnh án',
      'en': 'Medical records',
    },
    '6stkreeb': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // medicalRecord
  {
    'm6axmyrq': {
      'vi': 'Tổng trạng - sinh hiệu',
      'en': 'General condition - vital signs',
    },
    'il2mpfn1': {
      'vi': 'Xem chi tiết',
      'en': 'See details',
    },
    'knlbw8rn': {
      'vi': 'Tổng trạng: ',
      'en': 'General status:',
    },
    'ng00w3q2': {
      'vi': ' cm - ',
      'en': ' cm -',
    },
    'ufm9hzqp': {
      'vi': ' kg',
      'en': ' kg',
    },
    '5ifl0qmd': {
      'vi': '-  BMI:',
      'en': '- BMI:',
    },
    'wxpmyzbg': {
      'vi': 'Nhịp tim: ',
      'en': 'Heart rate:',
    },
    '7x6t1tst': {
      'vi': 'lần/phút',
      'en': 'times/minute',
    },
    '5bvo2rei': {
      'vi': '-  Nhịp thở: ',
      'en': '- Breathing:',
    },
    '25v0tvv5': {
      'vi': 'lần/phút',
      'en': 'times/minute',
    },
    'fym5u2tx': {
      'vi': 'Huyết áp: ',
      'en': 'Blood pressure:',
    },
    'aiauwbtt': {
      'vi': 'mmHg',
      'en': 'mm Hg',
    },
    'xqikud97': {
      'vi': 'SpO2: ',
      'en': 'SpO2:',
    },
    '17m7f1ys': {
      'vi': '%',
      'en': '%',
    },
    'uligc5ug': {
      'vi': 'Khám',
      'en': 'Examination',
    },
    'om0lpoq7': {
      'vi': 'Xem chi tiết',
      'en': 'See details',
    },
    'h0b03lck': {
      'vi': 'Chuẩn đoán',
      'en': 'Diagnosis',
    },
    'm9cmn1ia': {
      'vi': 'Xem chi tiết',
      'en': 'See details',
    },
    '5hahbhdo': {
      'vi': 'Cận lâm sàng hình ảnh',
      'en': 'Paraclinical imaging',
    },
    'gyxkzoxv': {
      'vi': 'Xem chi tiết',
      'en': 'See details',
    },
    'iz3kj6w6': {
      'vi': 'Chụp Xquang ngực thẳng',
      'en': 'Chest X-ray',
    },
    'vazqr5v3': {
      'vi': 'Kết quả: ',
      'en': 'Result:',
    },
    '9lfaxme5': {
      'vi': 'Chụp Xquang ngực thẳng',
      'en': 'Chest X-ray',
    },
    '2ndh2arh': {
      'vi': 'Kết quả: ',
      'en': 'Result:',
    },
    'xr4soka5': {
      'vi': 'Chỉ số siêu âm',
      'en': 'Ultrasound index',
    },
    'qwb0hu1e': {
      'vi': 'Tên chỉ số',
      'en': 'Index name',
    },
    'yvy8aefo': {
      'vi': 'Kết quả',
      'en': 'Result',
    },
    'q3gu3u0z': {
      'vi': 'v_DOPPLER_Aortic_Ar',
      'en': 'v_DOPPLER_Aortic_Ar',
    },
    '382c0rq9': {
      'vi': '112.1',
      'en': '112.1',
    },
    'u361ig6o': {
      'vi': 'v_DOPPLER_Aortic_Ar',
      'en': 'v_DOPPLER_Aortic_Ar',
    },
    'zr1v54qu': {
      'vi': '112.1',
      'en': '112.1',
    },
    'u84lwwhg': {
      'vi': 'v_DOPPLER_Aortic_Ar',
      'en': 'v_DOPPLER_Aortic_Ar',
    },
    '85mo4azs': {
      'vi': '112.1',
      'en': '112.1',
    },
    'i8qy54vo': {
      'vi': 'v_DOPPLER_Aortic_Ar',
      'en': 'v_DOPPLER_Aortic_Ar',
    },
    '4tok9a22': {
      'vi': '112.1',
      'en': '112.1',
    },
    'gqplse1b': {
      'vi': 'v_DOPPLER_Aortic_Ar',
      'en': 'v_DOPPLER_Aortic_Ar',
    },
    '1zts1jdx': {
      'vi': '112.1',
      'en': '112.1',
    },
    'ju40l0lf': {
      'vi': 'Cận lâm sàng xét nghiệm',
      'en': 'Paraclinical testing',
    },
    'opny8ut2': {
      'vi': 'Xem chi tiết',
      'en': 'See details',
    },
    'qqnxnjo3': {
      'vi': 'Tên xét nghiệm',
      'en': 'Test name',
    },
    '5zztpaay': {
      'vi': 'Kết quả Đơn vị',
      'en': 'Unit Results',
    },
    '0qvocyal': {
      'vi': 'Huyết Học',
      'en': 'Hematology',
    },
    'usrtg0u9': {
      'vi': 'PDW',
      'en': 'PDW',
    },
    '5bn03q5w': {
      'vi': '15.8 %',
      'en': '15.8 %',
    },
    'gax6p4gl': {
      'vi': 'PDW',
      'en': 'PDW',
    },
    'a2sz1ycj': {
      'vi': '15.8 %',
      'en': '15.8 %',
    },
    'ygt7u900': {
      'vi': 'PDW',
      'en': 'PDW',
    },
    'bsbcauou': {
      'vi': '15.8 %',
      'en': '15.8 %',
    },
    '42vlcn4e': {
      'vi': 'PDW',
      'en': 'PDW',
    },
    'opm1ux8m': {
      'vi': '15.8 %',
      'en': '15.8 %',
    },
    'bm1gqx6p': {
      'vi': 'Toa thuốc',
      'en': 'Prescription',
    },
    'in5xj3uy': {
      'vi': 'Xem chi tiết',
      'en': 'See details',
    },
    '1lju2e6c': {
      'vi': 'SL: ',
      'en': 'Qty:',
    },
    'q2pu163r': {
      'vi': '- Liều dùng: ',
      'en': '- Dosage: ',
    },
    '1isvzjtx': {
      'vi': 'Sáng -',
      'en': 'Morning -',
    },
    '0afsdy2e': {
      'vi': ' ,Chiều -',
      'en': ',Afternoon - ',
    },
    'pcwkxtwg': {
      'vi': ' ,Tối -',
      'en': ',Evening - ',
    },
    'e769medv': {
      'vi': 'Thông tin bệnh án',
      'en': 'Medical record information',
    },
    '09232d5r': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // forgotPasswordNewPassword
  {
    '2y1xy8od': {
      'vi': 'Quên mật khẩu',
      'en': 'Forgot Password',
    },
    '0w1rjnyh': {
      'vi': 'Mật khẩu mới *',
      'en': 'New Password *',
    },
    '5k7c1x9g': {
      'vi': ' Xác nhận mật khẩu mới *',
      'en': 'Confirm new password *',
    },
    '8phx864f': {
      'vi': 'Mật khẩu không khớp!',
      'en': 'Passwords do not match!',
    },
    '8o8jod1g': {
      'vi': 'Vui lòng nhập mật khẩu!',
      'en': 'Please enter password!',
    },
    'agd6dral': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'h0vg3r1o': {
      'vi': 'Vui lòng nhập mật khẩu xác nhận!',
      'en': 'Please enter confirmation password!',
    },
    'qap9rkb2': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'aq5g6e0m': {
      'vi': 'Lưu',
      'en': 'Save',
    },
    'ajk76ll2': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // forgotPasswordOTP
  {
    'f4v09s0q': {
      'vi': 'Quên mật khẩu',
      'en': 'Forgot Password',
    },
    'ladugqfy': {
      'vi': 'Vui lòng nhập mã OTP vừa gửi tới số điện thoại',
      'en': 'Please enter the OTP code just sent to your phone number',
    },
    '0l3anxe1': {
      'vi': 'Mã OTP sẽ hết hạn sau ',
      'en': 'OTP code will expire after',
    },
    '944yh01i': {
      'vi': 's',
      'en': 'S',
    },
    'xwruzwmo': {
      'vi': 'Không nhận được mã OTP?',
      'en': 'Didn\'t receive OTP code?',
    },
    'lvarsdpf': {
      'vi': 'Gửi lại',
      'en': 'Resend',
    },
    'kpxckodf': {
      'vi': 'Tiếp tục',
      'en': 'Continue',
    },
    'wvhfbvmv': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // listPatient
  {
    'mx0royd8': {
      'vi': 'Danh sách bệnh nhân',
      'en': 'Patient List',
    },
    'j178kl16': {
      'vi': 'HỒ SƠ BỆNH ÁN',
      'en': 'MEDICAL RECORDS',
    },
    'dgp0suqs': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // detailPatient
  {
    'd83m6rqs': {
      'vi': 'Xóa bệnh nhân',
      'en': 'Delete patient',
    },
    'fbjovrgy': {
      'vi': 'Bệnh nhân',
      'en': 'Patient',
    },
    'ddvk62hw': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // editInfoPatient
  {
    'aqlb6uk2': {
      'vi': 'Chỉnh sửa thông tin bệnh nhân',
      'en': 'Edit patient information',
    },
    'i4blpq2o': {
      'vi': 'Bệnh nhân đã đặt khám. Không thể thực hiện cập nhật thông tin.',
      'en': 'Patient has made an appointment. Unable to update information.',
    },
    '4i2kcitj': {
      'vi': 'Họ và tên *',
      'en': 'Full name *',
    },
    '92voqbkj': {
      'vi': 'Nhập họ và tên',
      'en': 'Enter your first and last name',
    },
    '9k73u1u7': {
      'vi': 'SĐT liên lạc',
      'en': 'Contact phone number',
    },
    'b4i16b74': {
      'vi': 'Nhập SĐT liên lạc',
      'en': 'Enter contact number',
    },
    '8gttg6us': {
      'vi': 'Chọn ngày sinh',
      'en': 'Select date of birth',
    },
    'cppq7wql': {
      'vi': 'Chọn giới tính',
      'en': 'Select gender',
    },
    'vmdyjeph': {
      'vi': 'Nam',
      'en': 'Male',
    },
    'uv0c372b': {
      'vi': 'Nữ',
      'en': 'Female',
    },
    '534sv55n': {
      'vi': 'Giới tính *',
      'en': 'Gender *',
    },
    'cz3e90o8': {
      'vi': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'ojgj239e': {
      'vi': 'Số căn cước công dân *',
      'en': 'Citizen ID number *',
    },
    'bctsuepf': {
      'vi': 'Nhập số căn cước công dân',
      'en': 'Enter citizen identification number',
    },
    '9aj6dtl8': {
      'vi': 'Địa chỉ nhà *',
      'en': 'Home address *',
    },
    'k7652cwc': {
      'vi': 'Nhập địa chỉ nhà cụ thể',
      'en': 'Enter specific home address',
    },
    'zet01ork': {
      'vi': 'Thông tin người thân',
      'en': 'Relatives information',
    },
    '509vvkqd': {
      'vi': 'Họ và tên người thân *',
      'en': 'Full name of relative *',
    },
    'y3vppncn': {
      'vi': 'Nhập họ và tên người thân',
      'en': 'Enter your family name',
    },
    'k3oxgaqj': {
      'vi': 'Địa chỉ người thân ',
      'en': 'Relatives\' address',
    },
    '3ygge4yv': {
      'vi': 'Nhập địa chỉ người thân',
      'en': 'Enter relative\'s address',
    },
    'ofsc519y': {
      'vi': 'SĐT người thân',
      'en': 'Relatives phone number',
    },
    'uxe6q564': {
      'vi': 'Nhập SĐT người thân',
      'en': 'Enter your relative\'s phone number',
    },
    'g2xoxpdr': {
      'vi': 'Quan hệ người thân',
      'en': 'Family relations',
    },
    'fxg3z9vl': {
      'vi': 'Vợ',
      'en': 'Wife',
    },
    'd3hv3y0e': {
      'vi': 'Vợ',
      'en': 'Wife',
    },
    '2xmx7ua7': {
      'vi': 'Chồng',
      'en': 'Husband',
    },
    '4p5bn12p': {
      'vi': 'Con',
      'en': 'Son',
    },
    'bff0dk3h': {
      'vi': 'Cha',
      'en': 'Father',
    },
    'bmnqppj2': {
      'vi': 'Mẹ',
      'en': 'Mom',
    },
    '4xzp7g7c': {
      'vi': 'Anh',
      'en': 'Older brother',
    },
    '56etl2oi': {
      'vi': 'Chị',
      'en': 'Older sister',
    },
    'pxlj3qz2': {
      'vi': 'Ông',
      'en': 'Grandfather',
    },
    'vw2d9fof': {
      'vi': 'Bà',
      'en': 'Grandma',
    },
    'qr9twgg8': {
      'vi': 'Khác',
      'en': 'Other',
    },
    'u2fssv3z': {
      'vi': 'Tìm kiếm',
      'en': 'Search',
    },
    'pshysyw1': {
      'vi': 'Vui lòng nhập họ tên! ',
      'en': 'Please enter your name!',
    },
    '9j6f8upr': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'niuzheze': {
      'vi': 'Vui lòng nhập số điện thoại!',
      'en': 'Please enter phone number!',
    },
    'zzks7dz6': {
      'vi': 'Số điện thoại phải có 10 chữ số!!',
      'en': 'Phone number must be 10 digits!!',
    },
    'ug6nqa60': {
      'vi': 'Số điện thoại phải có 10 chữ số!!',
      'en': 'Phone number must be 10 digits!!',
    },
    'ziat847i': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '2ne4vv9l': {
      'vi': 'Vui lòng nhập số CCCD!',
      'en': 'Please enter your ID number!',
    },
    '63r6t72e': {
      'vi': 'Số CCCD phải có đúng 12 chữ số!!',
      'en': 'The CCCD number must have exactly 12 digits!!',
    },
    'ft4okirs': {
      'vi': 'Số CCCD phải có đúng 12 chữ số!!',
      'en': 'The CCCD number must have exactly 12 digits!!',
    },
    'vsrndv1w': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'p51xkgez': {
      'vi': 'Field is required',
      'en': 'Field is required',
    },
    'jvrc2iyb': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'pj8yb3om': {
      'vi': 'Vui lòng nhập tên người thân!',
      'en': 'Please enter your relative\'s name!',
    },
    '3m2wq0he': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'am9k1n4a': {
      'vi': 'Field is required',
      'en': 'Field is required',
    },
    '6pebnfcj': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'vkqj99mk': {
      'vi': 'Field is required',
      'en': 'Field is required',
    },
    '025v7h28': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'tjeryzhb': {
      'vi': 'Lưu',
      'en': 'Save',
    },
    'n37gm697': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // payment
  {
    'yu7ngvt4': {
      'vi': 'Thông tin người nhận',
      'en': 'Recipient information',
    },
    '5cqu5x3m': {
      'vi': 'MB - Ngân Hàng Quân Đội',
      'en': 'MB - Military Bank',
    },
    'h1ci5pu4': {
      'vi': 'MB - Ngân Hàng Quân Đội',
      'en': 'MB - Military Bank',
    },
    'brsw0iiz': {
      'vi': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'q3tkwx4u': {
      'vi': 'Tài khoản/thẻ nhận',
      'en': 'Receiving account/card',
    },
    'wx9pxoic': {
      'vi': '1016644356',
      'en': '1016644356',
    },
    '3kca2wz7': {
      'vi': 'Tên người nhận',
      'en': 'Recipient name',
    },
    'vi9ic0z1': {
      'vi': 'Benh Vien MediCare TPHCM',
      'en': 'MediCare Hospital HCMC',
    },
    'qg58mngq': {
      'vi': 'Thông tin giao dịch',
      'en': 'Transaction information',
    },
    'c3wt1haa': {
      'vi': 'Số tiền',
      'en': 'Amount',
    },
    'j5rmjddv': {
      'vi': '150,000',
      'en': '150,000',
    },
    'awyiblqe': {
      'vi': 'Nội dung',
      'en': 'Content',
    },
    'hfuzpobn': {
      'vi': 'Tiếp tục',
      'en': 'Continue',
    },
    'k4wje7p8': {
      'vi': 'Thanh toán',
      'en': 'Pay',
    },
    'g5ulsf8p': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // paymentOTP
  {
    'pw1hj2pi': {
      'vi': 'Thanh toán',
      'en': 'Pay',
    },
    'tklzqq4x': {
      'vi': 'Vui lòng nhập mã OTP vừa gửi tới số điện thoại',
      'en': 'Please enter the OTP code just sent to your phone number',
    },
    'rk2jzcun': {
      'vi': 'Mã OTP sẽ hết hạn sau ',
      'en': 'OTP code will expire after',
    },
    'ce2zht6x': {
      'vi': 's',
      'en': 'S',
    },
    'ytiaa9dz': {
      'vi': 'Không nhận được mã OTP?',
      'en': 'Didn\'t receive OTP code?',
    },
    'v2bgwujp': {
      'vi': 'Gửi lại',
      'en': 'Resend',
    },
    'm9divhjd': {
      'vi': 'Tiếp tục',
      'en': 'Continue',
    },
    'taxzvg0k': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // paymentSuccessful
  {
    'kpu6g7bh': {
      'vi': 'Giao dịch thành công!',
      'en': 'Transaction successful!',
    },
    'h7v6ryhg': {
      'vi': '150,000 VND',
      'en': '150,000 VND',
    },
    'buprhh1m': {
      'vi': '18:47',
      'en': '18:47',
    },
    'my4rhgda': {
      'vi': 'Chủ nhật 207/07/2024',
      'en': 'Sunday 207/07/2024',
    },
    '6trjfdmj': {
      'vi': 'Tài khoản nhận',
      'en': 'Receiving account',
    },
    'ql8bei3q': {
      'vi': '0943640913',
      'en': '0943640913',
    },
    'mxe8n71b': {
      'vi': ' Tên người nhận',
      'en': 'Recipient name',
    },
    'siyzoftd': {
      'vi': 'Benh Vien Medicare TPHCM',
      'en': 'Medicare Hospital HCMC',
    },
    'ozqre3ud': {
      'vi': 'Nội dung',
      'en': 'Content',
    },
    'mgrvklvv': {
      'vi': 'Mã giao dịch',
      'en': 'Transaction code',
    },
    'fdwkrfeg': {
      'vi': 'PD0977654433',
      'en': 'PD0977654433',
    },
    '8k37wnsk': {
      'vi': 'Tiếp tục',
      'en': 'Continue',
    },
    '0m4pqnvg': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // login
  {
    '7rgib3ga': {
      'vi': 'Đăng nhập',
      'en': 'Log in',
    },
    '5y9sfekh': {
      'vi': 'MEDICARE APPOINTMENT',
      'en': 'MEDICARE APPOINTMENT',
    },
    'ohqpg21a': {
      'vi': 'Số điện thoại',
      'en': 'Phone number',
    },
    'ujnkawlw': {
      'vi': 'Nhập số điện thoại...',
      'en': 'Enter phone number...',
    },
    's4q8ylzv': {
      'vi': 'Người dùng không tồn tại!',
      'en': 'User does not exist!',
    },
    'yr7rryyl': {
      'vi': 'Mật khẩu',
      'en': 'Password',
    },
    'ldmas8xb': {
      'vi': 'Nhập mật khẩu...',
      'en': 'Enter password...',
    },
    'upt8mzvf': {
      'vi': 'Mật khẩu không đúng!!',
      'en': 'Password is incorrect!!',
    },
    'or6ok7f5': {
      'vi': 'Vui lòng nhập số điện thoại!',
      'en': 'Please enter phone number!',
    },
    'qksjtuy8': {
      'vi': 'Số điện thoại phải đúng 10 chữ số!!',
      'en': 'Phone number must be exactly 10 digits!!',
    },
    'rvybcevd': {
      'vi': 'Số điện thoại phải đúng 10 chữ số!!',
      'en': 'Phone number must be exactly 10 digits!!',
    },
    'tq9b4mka': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'kzw6r103': {
      'vi': 'Vui lòng nhập mật khẩu!',
      'en': 'Please enter password!',
    },
    'l46z2567': {
      'vi': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '6kltbeew': {
      'vi': 'Quên mật khẩu?',
      'en': 'Forgot password?',
    },
    'h34aev4z': {
      'vi': 'Bạn chưa có tài khoản',
      'en': 'You do not have an account',
    },
    '28a44kz4': {
      'vi': 'Đăng ký ngay',
      'en': 'Sign up now',
    },
    '9kssps1e': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // notificationPage
  {
    'nyjzziv9': {
      'vi': 'Thông báo',
      'en': 'Notification',
    },
    'q6bzubsj': {
      'vi': 'Đọc tất cả',
      'en': 'Read all',
    },
    'ze48xi0l': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // homePage
  {
    '1pb003g9': {
      'vi': 'MEDICARE Xin Chào!',
      'en': 'MEDICARE Hi !',
    },
    'oaxo5d0u': {
      'vi': 'Home',
      'en': '',
    },
  },
  // extensionPage
  {
    '1x4tnhc6': {
      'vi': 'Mở rộng',
      'en': 'Extend',
    },
    '95qw41hz': {
      'vi': 'HỒ SƠ BỆNH ÁN',
      'en': 'MEDICAL RECORDS',
    },
    '0j9kfshd': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // accountPage
  {
    '51tt4xkp': {
      'vi': ' Tài khoản',
      'en': 'Account',
    },
    '3vyfm1pi': {
      'vi': 'Thông tin tài khoản',
      'en': 'Account information',
    },
    '8r2q4rim': {
      'vi': 'Đổi mật khẩu',
      'en': 'Change password',
    },
    '5mblv8l4': {
      'vi': 'Đăng xuất',
      'en': 'Log out',
    },
    '3hjw5nys': {
      'vi': 'Home',
      'en': '',
    },
  },
  // article
  {
    'mcofijcv': {
      'vi': 'GIỚI THIỆU BỆNH VIỆN MEDICARE',
      'en': 'INTRODUCTION TO MEDICARE HOSPITAL',
    },
    'd3s7ovl2': {
      'vi': 'Medicare là một đơn vị ',
      'en': 'Medicare is a unit',
    },
    'egimdy56': {
      'vi':
          'hợp tác quốc tế giữa Sở Y tế thành phố Hồ Chí Minh với Hiệp Hội Alain Carpentier - Cộng hòa Pháp, là một đơn vị sự nghiệp y tế ',
      'en':
          'International cooperation between Ho Chi Minh City Department of Health and Alain Carpentier Association - French Republic, is a medical career unit.',
    },
    'uyvklvwn': {
      'vi':
          'chịu sự quản lý Nhà nước theo ngành của Sở Y tế thành phố Hồ Chí Minh. Medicare được tổ chức và hoạt động theo quy chế tự quản, hoạt động không nhằm mục đích lợi nhuận, tự cân đối thu chỉ, có tư cách pháp nhân, có con dấu riêng và mở tài khoản ở ngân hàng (kể cả tài khoản ngoại tệ) theo quy định pháp luật. Medicare được phép sử dụng tên bằng tiếng Pháp để giao dịch với nước ngoài. Medicare được giao nhiệm vụ ',
      'en':
          'under the State management of the Ho Chi Minh City Department of Health. Medicare is organized and operates under self-management regulations, operates not for profit, self-balances revenue, has legal status, has its own seal and opens bank accounts (including foreign currency accounts) according to the law. Medicare is allowed to use its French name for transactions with foreign countries. Medicare is assigned the task of',
    },
    'wr42e01b': {
      'vi': 'điều trị các bệnh tim và các dị tật về tim ở trẻ em',
      'en': 'treatment of heart disease and heart defects in children',
    },
    '4pt1mhth': {
      'vi':
          ', tiếp nhận mọi đối tượng bệnh nhân, giảng dạy nội ngoại khoa các bệnh tim cho bác sĩ, điều duỡng Việt Nam, Đông Nam Á và các nước trên thế giới, nghiên cứu phát triển kỹ thuật mới về bệnh tim và một số chuyên khoa khác đồng thời ',
      'en':
          ', accepting all types of patients, teaching internal medicine and surgery of heart diseases to doctors and nurses in Vietnam, Southeast Asia and other countries in the world, researching and developing new techniques on heart diseases and some other specialties at the same time',
    },
    '7lticrvb': {
      'vi':
          'hỗ trợ bệnh nhân nghèo, đặc biệt là trẻ em được mổ tim miễn phí một phần hoặc toàn phần ',
      'en':
          'Support poor patients, especially children, to have free heart surgery, partially or completely',
    },
    '4btplnyj': {
      'vi':
          'thông qua sự tài trợ của Hiệp Hội Alain Carpentier và các tổ chức xã hội, cá nhân khác. Medicare có Hội Đồng Giám Sát gồm 10 thành viên (5 thành viên Việt Nam và 5 thành viên phía Pháp), nhiệm kỳ 3 năm do Ủy ban nhân dân Thành phố ra quyết định công nhận.',
      'en':
          'through the sponsorship of the Alain Carpentier Association and other social organizations and individuals. Medicare has a Supervisory Board of 10 members (5 Vietnamese members and 5 French members), with a 3-year term recognized by the City People\'s Committee.',
    },
    'j3s3jeic': {
      'vi': 'Bài viết',
      'en': 'Article',
    },
    '0zzrm6b9': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // detailResultAppointment
  {
    '9hyrvsab': {
      'vi': 'Chi tiết cuộc hẹn',
      'en': 'Appointment details',
    },
    'w1xmgc1x': {
      'vi': 'Mã QR để check-in',
      'en': 'QR code for check-in',
    },
    'na0b9laj': {
      'vi': 'Thông tin cuộc hẹn',
      'en': 'Appointment information',
    },
    '95uaff0x': {
      'vi': 'Số khám ',
      'en': 'Examination number',
    },
    'cc5i7own': {
      'vi': 'Mã bệnh nhân:',
      'en': 'Patient code:',
    },
    'kxbg4j6h': {
      'vi': 'Tên bệnh nhân:',
      'en': 'Patient name:',
    },
    '81jo12qu': {
      'vi': 'Ngày khám:',
      'en': 'Date of examination:',
    },
    '16g9eeo0': {
      'vi': 'Giờ khám:',
      'en': 'Clinic hours:',
    },
    'r1kc8f0n': {
      'vi': 'Phòng khám:',
      'en': 'Clinic:',
    },
    'yhzai81a': {
      'vi': 'Bác sĩ:',
      'en': 'Doctor:',
    },
    '2d7636yj': {
      'vi': 'Chuyên khoa:',
      'en': 'Specialties:',
    },
    'j4bvitek': {
      'vi': 'Khoa tim',
      'en': 'Cardiology',
    },
    '55c1yjbk': {
      'vi': 'Ghi chú',
      'en': 'Note',
    },
    'ktx08inn': {
      'vi':
          'Vui lòng đến trước giờ hẹn 30 phút để làm thủ tục. Mang theo CCCD và các giấy tờ liên quan đến việc khám bệnh.',
      'en':
          'Please arrive 30 minutes before your appointment time to check in. Bring your ID card and other documents related to your medical examination.',
    },
    'k2q3nsh8': {
      'vi': 'Tải xuống',
      'en': 'Download',
    },
  },
  // addressHospital
  {
    'r5z4f9m2': {
      'vi': 'Địa chỉ',
      'en': 'Address',
    },
    'l6fh5q01': {
      'vi': 'Cơ sở khám Medicare',
      'en': 'Medicare Clinic',
    },
    '50461dgm': {
      'vi': '01 Đ. Võ Văn Ngân, Linh Chiểu, Thủ Đức, TP.HCM',
      'en': '01 Vo Van Ngan Street, Linh Chieu, Thu Duc, HCMC',
    },
    'wy58d7b7': {
      'vi': '079 9699 159',
      'en': '079 9699 159',
    },
    'jcw3nima': {
      'vi': 'Mở cửa 7h-16h',
      'en': 'Open 7am-4pm',
    },
    'd6gdmba8': {
      'vi': 'Chỉ đường ',
      'en': 'Directions',
    },
  },
  // chatbotSupport
  {
    'qd3pdcgk': {
      'vi': 'Chatbot',
      'en': 'Chatbot',
    },
    '0y4z58jc': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // pageResultAppointment
  {
    'hcvse35u': {
      'vi': 'Chi tiết cuộc hẹn',
      'en': 'Appointment details',
    },
    'sddfffn7': {
      'vi': 'Trang chủ',
      'en': 'Home',
    },
    'ck91qbag': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // readme
  {
    'zs5tk0qq': {
      'vi': 'HƯỚNG DẪN SỬ DỤNG MEDICARE',
      'en': 'INTRODUCTION TO MEDICARE HOSPITAL',
    },
    '1pcw095b': {
      'vi': 'Medicare là một đơn vị ',
      'en': 'Medicare is a unit',
    },
    '70pjngcp': {
      'vi':
          'hợp tác quốc tế giữa Sở Y tế thành phố Hồ Chí Minh với Hiệp Hội Alain Carpentier - Cộng hòa Pháp, là một đơn vị sự nghiệp y tế ',
      'en':
          'International cooperation between Ho Chi Minh City Department of Health and Alain Carpentier Association - French Republic, is a medical career unit.',
    },
    'wfoqoujc': {
      'vi':
          'chịu sự quản lý Nhà nước theo ngành của Sở Y tế thành phố Hồ Chí Minh. Medicare được tổ chức và hoạt động theo quy chế tự quản, hoạt động không nhằm mục đích lợi nhuận, tự cân đối thu chỉ, có tư cách pháp nhân, có con dấu riêng và mở tài khoản ở ngân hàng (kể cả tài khoản ngoại tệ) theo quy định pháp luật. Medicare được phép sử dụng tên bằng tiếng Pháp để giao dịch với nước ngoài. Medicare được giao nhiệm vụ ',
      'en':
          'under the State management of the Ho Chi Minh City Department of Health. Medicare is organized and operates under self-management regulations, operates not for profit, self-balances revenue, has legal status, has its own seal and opens bank accounts (including foreign currency accounts) according to the law. Medicare is allowed to use its French name for transactions with foreign countries. Medicare is assigned the task of',
    },
    '7zaeaoco': {
      'vi': 'điều trị các bệnh tim và các dị tật về tim ở trẻ em',
      'en': 'treatment of heart disease and heart defects in children',
    },
    'fjuylb71': {
      'vi':
          ', tiếp nhận mọi đối tượng bệnh nhân, giảng dạy nội ngoại khoa các bệnh tim cho bác sĩ, điều duỡng Việt Nam, Đông Nam Á và các nước trên thế giới, nghiên cứu phát triển kỹ thuật mới về bệnh tim và một số chuyên khoa khác đồng thời ',
      'en':
          ', accepting all types of patients, teaching internal medicine and surgery of heart diseases to doctors and nurses in Vietnam, Southeast Asia and other countries in the world, researching and developing new techniques on heart diseases and some other specialties at the same time',
    },
    'ozv298ct': {
      'vi':
          'hỗ trợ bệnh nhân nghèo, đặc biệt là trẻ em được mổ tim miễn phí một phần hoặc toàn phần ',
      'en':
          'Support poor patients, especially children, to have free heart surgery, partially or completely',
    },
    '90ta3bp2': {
      'vi':
          'thông qua sự tài trợ của Hiệp Hội Alain Carpentier và các tổ chức xã hội, cá nhân khác. Medicare có Hội Đồng Giám Sát gồm 10 thành viên (5 thành viên Việt Nam và 5 thành viên phía Pháp), nhiệm kỳ 3 năm do Ủy ban nhân dân Thành phố ra quyết định công nhận.',
      'en':
          'through the sponsorship of the Alain Carpentier Association and other social organizations and individuals. Medicare has a Supervisory Board of 10 members (5 Vietnamese members and 5 French members), with a 3-year term recognized by the City People\'s Committee.',
    },
    'qptji9jg': {
      'vi': 'Bài viết',
      'en': 'Article',
    },
    '2afle9n6': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // instruction
  {
    '8hxl0c49': {
      'vi': 'Danh mục chức năng ',
      'en': 'Function list',
    },
    'vk8mphbl': {
      'vi':
          '1.  Người dùng có thể xem tất cả cuộc hẹn đã đặt tại đây\n2. Người dùng chọn để đặt lịch khám bệnh tại đây\n3. Xem chi tiết thông tin bệnh nhân\n4. Hướng dẫn đường đi đến bệnh viện Medicare\n5. Xem phần mở rộng của app tại đây',
      'en':
          '1. User can view all booked appointments here\n2. User chooses to book a medical appointment here\n3. View patient details\n4. Directions to Medicare hospital\n5. View app extensions here',
    },
    'jvsl67d3': {
      'vi': 'Xem hồ sơ bệnh án',
      'en': 'View medical records',
    },
    'xkmqhazk': {
      'vi': 'Nhấn chọn hồ sơ bệnh án để xem hồ sơ bệnh án do bác sĩ đánh giá',
      'en':
          'Click on medical records to view medical records evaluated by a doctor',
    },
    '14hgtiuy': {
      'vi': 'Nhấn chọn để xem chi tiết bệnh án',
      'en': '',
    },
    '38xtqrza': {
      'vi': 'Đặt khám',
      'en': 'Make an appointment',
    },
    'rzpno466': {
      'vi':
          'QUY TRÌNH ĐĂNG KÝ KHÁM BỆNH:\n1. Chọn \"Đặt lịch khám\" ở trang chủ.\n2. Chọn \"Bệnh nhân\" \n3. Chọn ngày, giờ khám\n4. Thanh toán\n5. Nhận thông tin \n6. Hoàn thành',
      'en':
          'MEDICAL EXAMINATION REGISTRATION PROCESS:\n1. Select \"Make an appointment\" on the home page.\n2. Select \"Patient\"\n3. Select the date and time of the examination\n4. Payment\n5. Receive information\n6. Complete',
    },
    '71x2rw8s': {
      'vi': 'Cần trợ giúp?',
      'en': '',
    },
    'sw6idqze': {
      'vi': 'Liên hệ hỗ trợ tại:',
      'en': 'Contact support at:',
    },
    '1rpglt2s': {
      'vi': 'henduyentuan@gmail.com',
      'en': 'henduyentuan@gmail.com',
    },
    '88kpnsm2': {
      'vi': '079 9699 159',
      'en': '079 9699 159',
    },
    'abwu6rci': {
      'vi': 'Hướng dẫn sử dụng',
      'en': 'User manual',
    },
  },
  // optionPayment
  {
    'g8jli1j7': {
      'vi': 'Phương thức thanh toán',
      'en': 'Payment method',
    },
    'jo3gp2da': {
      'vi': 'Tiền mặt',
      'en': 'Cash',
    },
    'c60126xp': {
      'vi': 'Tài khoản ngân hàng',
      'en': 'Bank account',
    },
    'zpbmwvnt': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // paymentBank
  {
    '8os7ptzp': {
      'vi': 'Thông tin thanh toán',
      'en': 'Payment information',
    },
    'wktbkk5a': {
      'vi': 'Chủ tài khoản: MedicareAppointment',
      'en': '',
    },
    'x2ii7vkj': {
      'vi': 'Số tiền thanh toán: ',
      'en': '',
    },
    'isldw1es': {
      'vi': '150.000 đ',
      'en': '',
    },
    'gggv4ezo': {
      'vi': 'Thanh toán',
      'en': 'Continue',
    },
    '20rafhw8': {
      'vi': 'Thanh toán',
      'en': 'Pay',
    },
    'qrcxudf7': {
      'vi': 'Home',
      'en': 'Home',
    },
  },
  // bottomsheetAddPatient
  {
    '1dd5t9pk': {
      'vi': 'ĐÃ TỪNG KHÁM THÊM BỆNH NHÂN VÀO DANH SÁCH',
      'en': 'EXAMINED ADD PATIENTS TO LIST',
    },
    'x2l21sw4': {
      'vi': 'CHƯA TỪNG KHÁM TẠO MỚI BỆNH NHÂN',
      'en': 'NEVER EXAMINED A NEW PATIENT',
    },
  },
  // cardHomePageIntro
  {
    '22ct8k1p': {
      'vi': 'GIỚI THIỆU MEDIC...',
      'en': 'ABOUT MEDICARE',
    },
    'ujpt7zch': {
      'vi': 'Medicare là 1 ứng dụng được xây dựng nhằm...',
      'en': 'Medicare is an application built to...',
    },
  },
  // cardHomePageManual
  {
    'i49ei4y1': {
      'vi': 'HƯỚNG DẪN SỬ DỤNG',
      'en': 'REGISTRATION INSTRUCTIONS...',
    },
    '1n6haef0': {
      'vi': 'Hướng dẫn sử dụng Medicare...',
      'en': 'Medicare is an application built to...',
    },
  },
  // itemNofitication
  {
    'gdavbonq': {
      'vi': 'Thanh toán thành công',
      'en': 'Payment successful',
    },
    'fhpilszn': {
      'vi':
          'Cuộc hẹn Khám tim vào ngày 06/06/2024 của bạn đã được thanh toán\nmột tháng trước',
      'en':
          'Your Heart Check Appointment on 06/06/2024 has been paid for\na month ago',
    },
  },
  // columnAppointmentDate
  {
    'efdlj2s8': {
      'vi': 'T2 13/07',
      'en': 'Mon 13/07',
    },
    's0qu271n': {
      'vi': 'T3 14/07',
      'en': 'T3 14/07',
    },
    '5cne0rsq': {
      'vi': 'T4 15/07',
      'en': 'Wed 15/07',
    },
    'zjt1msi9': {
      'vi': 'T5 16/07',
      'en': 'Thu 16/07',
    },
    'vljech12': {
      'vi': 'T6 17/07',
      'en': 'Friday 17/07',
    },
    '57l4vl3w': {
      'vi': 'T7 18/07',
      'en': 'Sat 18/07',
    },
    'jpcp7xkx': {
      'vi': 'CN 19/07',
      'en': 'Sunday 19/07',
    },
  },
  // appointmentTime
  {
    'x9m8tyh4': {
      'vi': '07:00',
      'en': '07:00',
    },
    '3d1x6y2o': {
      'vi': '07:30',
      'en': '07:30',
    },
    '7etpgp43': {
      'vi': '08:00',
      'en': '08:00',
    },
    '2ncyyo0w': {
      'vi': '08:30',
      'en': '08:30',
    },
    'eauv3df3': {
      'vi': '09:00',
      'en': '09:00',
    },
    '08qqy7kh': {
      'vi': '09:30',
      'en': '09:30',
    },
    'sfc56twb': {
      'vi': '10:00',
      'en': '10:00',
    },
    'j18q312s': {
      'vi': '10:30',
      'en': '10:30',
    },
    'i7d2a3jf': {
      'vi': '11:00',
      'en': '11:00',
    },
    '4bp3tbmj': {
      'vi': '11:30',
      'en': '11:30',
    },
    'g7nmfg54': {
      'vi': '13:00',
      'en': '13:00',
    },
    '43y7j0hu': {
      'vi': '13:30',
      'en': '13:30',
    },
    '6jngs8la': {
      'vi': '14:00',
      'en': '14:00',
    },
    'cwr35426': {
      'vi': '15:00',
      'en': '15:00',
    },
    'ptdcsnb5': {
      'vi': '07:00',
      'en': '07:00',
    },
  },
  // detailInforAppointment
  {
    'lza580a9': {
      'vi': 'Dịch vụ khám',
      'en': 'Medical examination services',
    },
    '4z1intpv': {
      'vi': 'Khám tim',
      'en': 'Heart check',
    },
    'e43j8e7q': {
      'vi': 'Mã cuộc hẹn',
      'en': 'Appointment code',
    },
    '079cb747': {
      'vi': 'Giờ khám',
      'en': 'Examination hours',
    },
    'ro54u10e': {
      'vi': 'Địa điểm',
      'en': 'Location',
    },
    '3lwgs2v2': {
      'vi': 'Trạng thái',
      'en': 'Status',
    },
    'ez877cwg': {
      'vi': 'Giá',
      'en': 'Price',
    },
    'n73001v4': {
      'vi': '150.000',
      'en': '150,000',
    },
  },
  // itemHistoryExamination
  {
    '7s8fey6h': {
      'vi': 'Ngoại trú',
      'en': 'Outpatient',
    },
  },
  // optionAddPatient
  {
    '4azd9qrv': {
      'vi': 'Chưa từng khám',
      'en': 'Never examined',
    },
    '4hxabyqz': {
      'vi': 'Tạo mới bệnh nhân',
      'en': 'Create new patient',
    },
    'vpa5mlw9': {
      'vi': 'Đã từng khám',
      'en': 'Have been examined',
    },
    '0y4ifeol': {
      'vi': 'Thêm vào DS quản lý',
      'en': 'Add to management list',
    },
  },
  // homePageMenu
  {
    'gr0fjcku': {
      'vi': 'Cuộc hẹn',
      'en': 'Appointment',
    },
    '2vick9ra': {
      'vi': 'Đặt khám',
      'en': 'Make an appointment',
    },
    'axf1cnkj': {
      'vi': 'Bệnh nhân',
      'en': 'Patient',
    },
    'or9l3n0f': {
      'vi': 'Lấy STT',
      'en': 'Get STT',
    },
    'x9j4ex3j': {
      'vi': 'Mở rộng',
      'en': 'Extend',
    },
  },
  // menuMainPage
  {
    'vu84uee6': {
      'vi': 'Cuộc hẹn',
      'en': 'Appointment',
    },
    '1zbzk4vh': {
      'vi': 'Đặt khám',
      'en': 'Make an appointment',
    },
    '5y93ihtd': {
      'vi': 'Bệnh nhân',
      'en': 'Patient',
    },
    'jgq9siyp': {
      'vi': 'Chỉ dẫn',
      'en': 'Direct',
    },
    'gtlerzf3': {
      'vi': 'Mở rộng',
      'en': 'Extend',
    },
  },
  // dialogSignOut
  {
    'm23m1t3m': {
      'vi': 'Thông báo',
      'en': 'Notification',
    },
    '6fqx3xgc': {
      'vi': 'Bạn có muốn đăng xuất không?',
      'en': 'Do you want to log out?',
    },
    '54vnlrcc': {
      'vi': 'Hủy',
      'en': 'CANCEL',
    },
    'w7yizcuo': {
      'vi': 'Đồng ý',
      'en': 'AGREE',
    },
  },
  // Miscellaneous
  {
    'y278x7jg': {
      'vi': 'Cấp quyền truy cập Photo để thực hiện đặt khám',
      'en': 'Grant Photo access to make an appointment',
    },
    'hcbf7kv0': {
      'vi': '',
      'en': '',
    },
    'ot1j9o34': {
      'vi': '',
      'en': '',
    },
    'or9h5vqe': {
      'vi': '',
      'en': '',
    },
    'wsmnvmxz': {
      'vi': '',
      'en': '',
    },
    'u9o3ncxw': {
      'vi': '',
      'en': '',
    },
    'n1r4k85x': {
      'vi': '',
      'en': '',
    },
    'ui1myttm': {
      'vi': '',
      'en': '',
    },
    '6dem1fly': {
      'vi': '',
      'en': '',
    },
    'k03xasns': {
      'vi': '',
      'en': '',
    },
    '95uclgbe': {
      'vi': '',
      'en': '',
    },
    'q6crnajs': {
      'vi': '',
      'en': '',
    },
    '0zyh5s1r': {
      'vi': '',
      'en': '',
    },
    '6kt7dqzw': {
      'vi': '',
      'en': '',
    },
    'dz75hjkz': {
      'vi': '',
      'en': '',
    },
    '78v3cq4k': {
      'vi': '',
      'en': '',
    },
    '2muv6cvt': {
      'vi': '',
      'en': '',
    },
    '81jf4ghf': {
      'vi': '',
      'en': '',
    },
    '61ullv5y': {
      'vi': '',
      'en': '',
    },
    'gbqthuw8': {
      'vi': '',
      'en': '',
    },
    'f6qzjymc': {
      'vi': '',
      'en': '',
    },
    'acphtkow': {
      'vi': '',
      'en': '',
    },
    '2rtllgzn': {
      'vi': '',
      'en': '',
    },
    'ec3q35kf': {
      'vi': '',
      'en': '',
    },
    'j6zsu3i0': {
      'vi': '',
      'en': '',
    },
    'n1ftkff7': {
      'vi': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
