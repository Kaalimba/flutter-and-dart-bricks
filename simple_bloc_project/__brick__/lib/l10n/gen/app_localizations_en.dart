// dart format off
// coverage:ignore-file

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get loginToYourAccount => 'Login to your account';

  @override
  String get yourBusinessStartsHere => 'Your business\'s future starts here';

  @override
  String get phoneNumber => 'Phone number';

  @override
  String get phoneNumberRequired => 'Phone number is required';

  @override
  String phoneNumberLengthError(Object length) {
    return 'Phone number must be $length digits';
  }

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get confirmPasswordHint => 'Re-enter your password';

  @override
  String get passwordHint => 'Enter your password';

  @override
  String get passwordCannotBeEmpty => 'Please enter your password';

  @override
  String get passwordsDoNotMatch => 'Passwords do not match';

  @override
  String get login => 'Login';

  @override
  String get confirm => 'Confirm';

  @override
  String get cancel => 'Cancel';

  @override
  String get dashboard => 'Dashboard';

  @override
  String get shop => 'Bootik';

  @override
  String get catalog => 'Catalog';

  @override
  String get orders => 'Orders';

  @override
  String get settings => 'Settings';

  @override
  String get doYouWantToLogout => 'Do you want to logout?';

  @override
  String get reLoginNeededNextTime => 'You will need to login again to access your account next time.';

  @override
  String get noShops => 'No shops available';

  @override
  String get addShop => 'Add my bootik';

  @override
  String get shopName => 'Your bootik name';

  @override
  String get shopNameHint => 'Ex: Kaalimba, Romaric\'s Store';

  @override
  String get shopDescription => 'Shop description';

  @override
  String get shopDescriptionHint => 'Ex: I sell electronics, I sell fashion items';

  @override
  String get shopNameRequired => 'Bootik name is required';

  @override
  String get shopNameTooShort => 'Bootik name should be at least 3 characters';

  @override
  String get noPhoneNumber => 'No phone number';

  @override
  String get categories => 'Categories';

  @override
  String get products => 'Products';

  @override
  String get createAccount => 'Create an account';

  @override
  String get next => 'Continue';

  @override
  String get welcome => 'Welcome to Bootik';

  @override
  String get enterYourPassword => 'Enter your password';

  @override
  String enterOtp(Object phoneNumber) {
    return 'Enter the OTP sent to your $phoneNumber';
  }

  @override
  String get verify => 'Verify';

  @override
  String get otpRequired => 'OTP is required';

  @override
  String get otpLengthError => 'OTP must be 4 digits';

  @override
  String get registration => 'Registration';

  @override
  String get enterYourDetails => 'Enter your details';

  @override
  String get firstName => 'First name';

  @override
  String get firstNameHint => 'Ex: Oumar';

  @override
  String get lastName => 'Last name';

  @override
  String get lastNameHint => 'Ex: Kouassi';

  @override
  String get optional => 'Optional';

  @override
  String get retry => 'Retry';

  @override
  String filePickerMaxFilesReached(Object max) {
    return 'You can only select up to $max files.';
  }

  @override
  String get addImage => 'Add Image';

  @override
  String get addFile => 'Add File';

  @override
  String get camera => 'Camera';

  @override
  String get gallery => 'Gallery';

  @override
  String get shopLogo => 'Bootik Logo';

  @override
  String get noProducts => 'No products';

  @override
  String get addProduct => 'Add Product';

  @override
  String get noCategories => 'No categories';

  @override
  String get addCategory => 'Add Category';

  @override
  String get productImages => 'Product Images';

  @override
  String get category => 'Category';

  @override
  String get selectCategory => 'Select a category';

  @override
  String get categoryRequired => 'Category is required';

  @override
  String get productName => 'Product Name';

  @override
  String get productNameHint => 'Ex: iPhone 15 Pro';

  @override
  String get productDescription => 'Product Description';

  @override
  String get productDescriptionHint => 'Describe your product';

  @override
  String get price => 'Price';

  @override
  String get stock => 'Stock';

  @override
  String get attributes => 'Attributes';

  @override
  String get color => 'Color';

  @override
  String get colorHint => 'Ex: Space Black';

  @override
  String get storage => 'Storage';

  @override
  String get storageHint => 'Ex: 256GB';

  @override
  String get isActive => 'Is Active';

  @override
  String get productNameRequired => 'Product name is required';

  @override
  String get productNameTooShort => 'Product name should be at least 3 characters';

  @override
  String get priceRequired => 'Price is required';

  @override
  String get priceInvalid => 'Please enter a valid price';

  @override
  String get stockRequired => 'Stock is required';

  @override
  String get stockInvalid => 'Please enter a valid stock quantity';

  @override
  String get categoryIcon => 'Category Icon';

  @override
  String get categoryName => 'Category Name';

  @override
  String get categoryNameHint => 'Ex: Electronics, Clothing';

  @override
  String get categoryNameRequired => 'Category name is required';

  @override
  String get categoryNameTooShort => 'Category name should be at least 3 characters';

  @override
  String get add => 'Add';

  @override
  String get visible => 'Visible';

  @override
  String get hidden => 'Hidden';

  @override
  String get editCategory => 'Edit Category';

  @override
  String get deleteCategory => 'Delete Category';

  @override
  String get deleteCategoryConfirmation => 'Are you sure you want to delete this category? This action cannot be undone.';

  @override
  String get deleteProduct => 'Delete Product';

  @override
  String get deleteProductConfirmation => 'Are you sure you want to delete this item? This action cannot be undone.';

  @override
  String get delete => 'Delete';

  @override
  String get noCategory => 'No category';

  @override
  String get editProduct => 'Edit Product';

  @override
  String inStock(Object stock) {
    return 'In Stock: $stock';
  }

  @override
  String get outOfStock => 'Out of Stock';
}
