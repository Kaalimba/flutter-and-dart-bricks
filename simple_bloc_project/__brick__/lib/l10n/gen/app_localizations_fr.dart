// dart format off
// coverage:ignore-file

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get loginToYourAccount => 'Connectez-vous à votre compte';

  @override
  String get yourBusinessStartsHere => 'Le futur de votre business commence ici';

  @override
  String get phoneNumber => 'Numéro de téléphone';

  @override
  String get phoneNumberRequired => 'Le numéro de téléphone est requis';

  @override
  String phoneNumberLengthError(Object length) {
    return 'Le numéro de téléphone doit comporter $length chiffres';
  }

  @override
  String get password => 'Mot de passe';

  @override
  String get confirmPassword => 'Confirmer le mot de passe';

  @override
  String get confirmPasswordHint => 'Entrez à nouveau votre mot de passe';

  @override
  String get passwordHint => 'Entrez votre mot de passe';

  @override
  String get passwordCannotBeEmpty => 'Entrez votre mot de passe';

  @override
  String get passwordsDoNotMatch => 'Les mots de passe ne correspondent pas';

  @override
  String get login => 'Se connecter';

  @override
  String get confirm => 'Confirmer';

  @override
  String get cancel => 'Annuler';

  @override
  String get dashboard => 'Accueil';

  @override
  String get shop => 'Bootik';

  @override
  String get catalog => 'Catalogue';

  @override
  String get orders => 'Commandes';

  @override
  String get settings => 'Paramètres';

  @override
  String get doYouWantToLogout => 'Voulez-vous vous déconnecter ?';

  @override
  String get reLoginNeededNextTime => 'Vous devrez vous reconnecter pour accéder à votre compte la prochaine fois.';

  @override
  String get noShops => 'Aucune Bootik';

  @override
  String get addShop => 'Ajouter ma bootik';

  @override
  String get shopName => 'Nom de votre bootik';

  @override
  String get shopNameHint => 'Ex : Kaalimba, Chez Oumar';

  @override
  String get shopDescription => 'Description de la boutique';

  @override
  String get shopDescriptionHint => 'Ex : Je vends de l\'électronique, Je vends des articles de mode';

  @override
  String get shopNameRequired => 'Le nom de la bootik est requis';

  @override
  String get shopNameTooShort => 'Le nom de la bootik doit comporter au moins 3 caractères';

  @override
  String get noPhoneNumber => 'Aucun numéro';

  @override
  String get categories => 'Catégories';

  @override
  String get products => 'Articles';

  @override
  String get createAccount => 'Créer un compte';

  @override
  String get next => 'Continuer';

  @override
  String get welcome => 'Bienvenue sur Bootik';

  @override
  String get enterYourPassword => 'Entrez votre mot de passe';

  @override
  String enterOtp(Object phoneNumber) {
    return 'Entrez le code OTP envoyé à votre $phoneNumber';
  }

  @override
  String get verify => 'Vérifier';

  @override
  String get otpRequired => 'Le code OTP est requis';

  @override
  String get otpLengthError => 'Le code OTP doit comporter 4 chiffres';

  @override
  String get registration => 'Inscription';

  @override
  String get enterYourDetails => 'Entrez vos informations';

  @override
  String get firstName => 'Prénom';

  @override
  String get firstNameHint => 'Ex : Aziz';

  @override
  String get lastName => 'Nom';

  @override
  String get lastNameHint => 'Ex : Soulé';

  @override
  String get optional => 'Optionnel';

  @override
  String get retry => 'Réessayer';

  @override
  String filePickerMaxFilesReached(Object max) {
    return 'Vous ne pouvez sélectionner que $max fichiers au maximum.';
  }

  @override
  String get addImage => 'Ajouter une image';

  @override
  String get addFile => 'Ajouter un fichier';

  @override
  String get camera => 'Caméra';

  @override
  String get gallery => 'Galerie';

  @override
  String get shopLogo => 'Logo de la Bootik';

  @override
  String get noProducts => 'Aucun article';

  @override
  String get addProduct => 'Ajouter un article';

  @override
  String get noCategories => 'Aucune catégorie';

  @override
  String get addCategory => 'Ajouter une catégorie';

  @override
  String get productImages => 'Images de l\'article';

  @override
  String get category => 'Catégorie';

  @override
  String get selectCategory => 'Sélectionner une catégorie';

  @override
  String get categoryRequired => 'La catégorie est requise';

  @override
  String get productName => 'Nom de l\'article';

  @override
  String get productNameHint => 'Ex : iPhone 15 Pro';

  @override
  String get productDescription => 'Description de l\'article';

  @override
  String get productDescriptionHint => 'Décrivez votre article';

  @override
  String get price => 'Prix';

  @override
  String get stock => 'Stock';

  @override
  String get attributes => 'Attributs';

  @override
  String get color => 'Couleur';

  @override
  String get colorHint => 'Ex : Noir Space';

  @override
  String get storage => 'Stockage';

  @override
  String get storageHint => 'Ex : 256 Go';

  @override
  String get isActive => 'Actif';

  @override
  String get productNameRequired => 'Le nom de l\'article est requis';

  @override
  String get productNameTooShort => 'Le nom de l\'article doit comporter au moins 3 caractères';

  @override
  String get priceRequired => 'Le prix est requis';

  @override
  String get priceInvalid => 'Veuillez entrer un prix valide';

  @override
  String get stockRequired => 'Le stock est requis';

  @override
  String get stockInvalid => 'Veuillez entrer une quantité de stock valide';

  @override
  String get categoryIcon => 'Icône de catégorie';

  @override
  String get categoryName => 'Nom de la catégorie';

  @override
  String get categoryNameHint => 'Ex : Électronique, Vêtements';

  @override
  String get categoryNameRequired => 'Le nom de la catégorie est requis';

  @override
  String get categoryNameTooShort => 'Le nom de la catégorie doit comporter au moins 3 caractères';

  @override
  String get add => 'Ajouter';

  @override
  String get visible => 'Visible';

  @override
  String get hidden => 'Caché';

  @override
  String get editCategory => 'Modifier la catégorie';

  @override
  String get deleteCategory => 'Supprimer la catégorie';

  @override
  String get deleteCategoryConfirmation => 'Êtes-vous sûr de vouloir supprimer cette catégorie ? Cette action ne peut pas être annulée.';

  @override
  String get deleteProduct => 'Supprimer l\'article';

  @override
  String get deleteProductConfirmation => 'Êtes-vous sûr de vouloir supprimer cet article ? Cette action ne peut pas être annulée.';

  @override
  String get delete => 'Supprimer';

  @override
  String get noCategory => 'Pas de catégorie';

  @override
  String get editProduct => 'Modifier l\'article';

  @override
  String inStock(Object stock) {
    return 'En stock: $stock';
  }

  @override
  String get outOfStock => 'Rupture de stock';
}
