import 'package:tina/core/constant/imgAsset.dart';
import 'package:tina/data/model/onBoardingModel.dart';
import 'package:tina/data/model/subCategoryModel.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "Choose Product",
      body:
          "We Have a 100k Product, Choose \n Your Product From Our \n E-commerce Shop",
      image: AppImgAsset.onBoardingImg1),
  OnBoardingModel(
      title: "Easy And Safe Payment",
      body:
          "We Have a 100k Product, Choose \n Your Product From Our \n E-commerce Shop",
      image: AppImgAsset.onBoardingImg2),
  OnBoardingModel(
      title: "Track Your Order",
      body:
          "We Have a 100k Product, Choose \n Your Product From Our \n E-commerce Shop",
      image: AppImgAsset.onBoardingImg3),
];

List<SubCategoryModel> subCategoryList = [
  SubCategoryModel(title: "Ink", imgUrl: AppImgAsset.ink),
  SubCategoryModel(title: "Inkjet Printer", imgUrl: AppImgAsset.inkjet),
  SubCategoryModel(title: "Projectors", imgUrl: AppImgAsset.projector),
  SubCategoryModel(title: "Scanners", imgUrl: AppImgAsset.scanner),
  SubCategoryModel(title: "POS", imgUrl: AppImgAsset.pos),
  SubCategoryModel(
      title: "Colour Label Printers", imgUrl: AppImgAsset.colourLabelPrinter),
  SubCategoryModel(title: "Dot-Matrex Printers", imgUrl: AppImgAsset.dotMatrix),
];

List<String> categoryList = [
  'Epson',
  'Tecnoware',
  'Computer',
  'Camera',
  'K&F',
  'Budget',
  'Games'
];

List<CustomCategoryItem> categoryItemList = [
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.ink,
    categoryNameItem: "Ink",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.inkjet,
    categoryNameItem: "Inkjet",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.projector,
    categoryNameItem: "Projector",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.scanner,
    categoryNameItem: "Scanner",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.pos,
    categoryNameItem: "POS",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.colourLabelPrinter,
    categoryNameItem: "Colour Label Printer",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.dotMatrix,
    categoryNameItem: "Dot-Matrix Printer",
  ),
];
