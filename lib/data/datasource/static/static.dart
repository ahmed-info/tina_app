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

List<CustomCategoryItem> subCategoryEpsonList = [
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

List<CustomCategoryItem> subCategoryTechnowareList = [
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.upsDC,
    categoryNameItem: "UPS-DC",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.upsLineInteractive,
    categoryNameItem: "UPS Line Interactive",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.upsLineInteractiveSinewave,
    categoryNameItem: "UPS Line Interactive Sinewave",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.upsSinglePhaseOnline,
    categoryNameItem: "UPS Single Phase Online",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.upsThreePhaseOnline,
    categoryNameItem: "UPS Three Phase Online",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.stablizers,
    categoryNameItem: "Stablizers",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.batteries,
    categoryNameItem: "Batteries",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.upsAccessories,
    categoryNameItem: "UPS Accessories",
  ),
];

List<CustomCategoryItem> subCategoryComputerList = [
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.labtop,
    categoryNameItem: "Labtop",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.pcComponents,
    categoryNameItem: "PC Components",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.system,
    categoryNameItem: "System",
  ),
];

List<CustomCategoryItem> subCategoryCameraList = [
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.labtop,
    categoryNameItem: "Labtop",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.pcComponents,
    categoryNameItem: "PC Components",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.system,
    categoryNameItem: "System",
  ),
];

List<CustomCategoryItem> subCategoryKAndFList = [
   const CustomCategoryItem(
    categoryImgItem: AppImgAsset.backPack,
    categoryNameItem: "BackPack",
  ),
   const CustomCategoryItem(
    categoryImgItem: AppImgAsset.reflectors,
    categoryNameItem: "Reflectors",
  ),
   const CustomCategoryItem(
    categoryImgItem: AppImgAsset.microphone,
    categoryNameItem: "Microphone",
  ),
];

List<CustomCategoryItem> subCategoryBudgetList = [
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.tableDesc,
    categoryNameItem: "Table Descktop",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.chair,
    categoryNameItem: "Chair",
  ),
];

List<CustomCategoryItem> subCategoryGamesList = [
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.tableDesc,
    categoryNameItem: "Table Descktop",
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.chair,
    categoryNameItem: "Chair",
  ),
];
