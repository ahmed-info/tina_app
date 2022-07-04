import 'package:tina/core/constant/imgAsset.dart';

import 'package:tina/data/model/onBoardingModel.dart';
import 'package:tina/data/model/subCategoryModel.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/myWidget/product/customProductItem.dart';

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
  SubCategoryModel(title: "Projectors", imgUrl: AppImgAsset.projector),
  SubCategoryModel(title: "Scanners", imgUrl: AppImgAsset.scanner),
  SubCategoryModel(title: "POS", imgUrl: AppImgAsset.pos),
  SubCategoryModel(
      title: "Colour Label Printers", imgUrl: AppImgAsset.colourLabelPrinter),
  SubCategoryModel(title: "Dot-Matrex Printers", imgUrl: AppImgAsset.dotMatrix),
  SubCategoryModel(title: "Ink", imgUrl: AppImgAsset.ink),
  SubCategoryModel(title: "Inkjet Printer", imgUrl: AppImgAsset.inkjet),
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
    //productName: "Projector",
    categoryImgItem: AppImgAsset.projector,
    categoryNameItem: "Projector", num: 0,
  ),
  const CustomCategoryItem(
    //productName: "Scanner",
    categoryImgItem: AppImgAsset.scanner,
    categoryNameItem: "Scanner", num: 1,
  ),
  const CustomCategoryItem(
    //productName: "POS",
    categoryImgItem: AppImgAsset.pos,
    categoryNameItem: "POS", num: 2,
  ),
  const CustomCategoryItem(
    //productName: "Colour Label Printer",
    categoryImgItem: AppImgAsset.colourLabelPrinter,
    categoryNameItem: "Colour Label Printer", num: 3,
  ),
  const CustomCategoryItem(
    //productName: "Dot-Matrix Printer",
    categoryImgItem: AppImgAsset.dotMatrix,
    categoryNameItem: "Dot-Matrix Printer", num: 4,
  ),
  const CustomCategoryItem(
    //productName: "Ink",
    categoryImgItem: AppImgAsset.ink,
    categoryNameItem: "Ink", num: 5,
  ),
  const CustomCategoryItem(
    //productName: "Inkjet",
    categoryImgItem: AppImgAsset.inkjet,
    categoryNameItem: "Inkjet", num: 6,
  ),
];

List<CustomCategoryItem> subCategoryTechnowareList = [
  const CustomCategoryItem(
    //productName: "UPS-DC",
    categoryImgItem: AppImgAsset.upsDC,
    categoryNameItem: "UPS-DC", num: 7,
  ),
  const CustomCategoryItem(
    //productName: "UPS Line Interactive",
    categoryImgItem: AppImgAsset.upsLineInteractive,
    categoryNameItem: "UPS Line Interactive", num: 8,
  ),
  const CustomCategoryItem(
    //productName: "UPS Line Interactive Sinewave",
    categoryImgItem: AppImgAsset.upsLineInteractiveSinewave,
    categoryNameItem: "UPS Line Interactive Sinewave", num: 9,
  ),
  const CustomCategoryItem(
    //productName: "UPS Single Phase Online",
    categoryImgItem: AppImgAsset.upsSinglePhaseOnline,
    categoryNameItem: "UPS Single Phase Online", num: 10,
  ),
  const CustomCategoryItem(
    //productName: "UPS Three Phase Online",
    categoryImgItem: AppImgAsset.upsThreePhaseOnline,
    categoryNameItem: "UPS Three Phase Online", num: 11,
  ),
  const CustomCategoryItem(
    //productName: "Stablizers",
    categoryImgItem: AppImgAsset.stablizers,
    categoryNameItem: "Stablizers", num: 12,
  ),
  const CustomCategoryItem(
    //productName: "Batteries",
    categoryImgItem: AppImgAsset.batteries,
    categoryNameItem: "Batteries", num: 13,
  ),
  const CustomCategoryItem(
    //productName: "UPS Accessories",
    categoryImgItem: AppImgAsset.upsAccessories,
    categoryNameItem: "UPS Accessories", num: 14,
  ),
  const CustomCategoryItem(
    //productName: "UPS Accessories",
    categoryImgItem: AppImgAsset.upsAccessories,
    categoryNameItem: "UPS Accessories", num: 15,
  ),
];

List<CustomCategoryItem> subCategoryComputerList = [
  const CustomCategoryItem(
    //productName: "Labtop",
    categoryImgItem: AppImgAsset.labtop,
    categoryNameItem: "Labtop", num: 20,
  ),
  const CustomCategoryItem(
    //productName: "PC Components",
    categoryImgItem: AppImgAsset.pcComponents,
    categoryNameItem: "PC Components", num: 21,
  ),
  const CustomCategoryItem(
    //productName: "System",
    categoryImgItem: AppImgAsset.system,
    categoryNameItem: "System", num: 22,
  ),
];

List<CustomCategoryItem> subCategoryCameraList = [
  const CustomCategoryItem(
    //productName: "Camera",
    categoryImgItem: AppImgAsset.camera,
    categoryNameItem: "Camera", num: 30,
  ),
];

List<CustomCategoryItem> subCategoryKAndFList = [
  const CustomCategoryItem(
    //productName: "BackPack",
    categoryImgItem: AppImgAsset.backPack,
    categoryNameItem: "BackPack", num: 40,
  ),
  const CustomCategoryItem(
    //productName: "Reflectors",
    categoryImgItem: AppImgAsset.reflectors,
    categoryNameItem: "Reflectors", num: 41,
  ),
  const CustomCategoryItem(
    //productName: "Microphone",
    categoryImgItem: AppImgAsset.microphone,
    categoryNameItem: "Microphone", num: 42,
  ),
];

List<CustomCategoryItem> subCategoryBudgetList = [
  const CustomCategoryItem(
    //productName: "Table Descktop",
    categoryImgItem: AppImgAsset.tableDesc,
    categoryNameItem: "Table Descktop", num: 50,
  ),
  const CustomCategoryItem(
    //productName: "Chair",
    categoryImgItem: AppImgAsset.chair,
    categoryNameItem: "Chair",
    num: 51,
  ),
];

List<CustomCategoryItem> subCategoryGamesList = [
  const CustomCategoryItem(
    //productName: "Table Descktop",
    categoryImgItem: AppImgAsset.tableDesc,
    categoryNameItem: "Table Descktop", num: 60,
  ),
  const CustomCategoryItem(
    //productName: "Chair",
    categoryImgItem: AppImgAsset.chair,
    categoryNameItem: "Chair", num: 61,
  ),
];
////////////////////////////////////////////////////
List<CustomProductItem> productInkList = [
  const CustomProductItem(
    productImg: AppImgAsset.ink103,
    productName: "103 EcoTank 4-colour Multipack",
    price: 30,
    num: 1000,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.inkBlackXXL,
    productName: "Black XXL Ink Supply Unit",
    price: 45,
    num: 1001,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.inkCyanXL,
    productName: "Cyan XL Ink Supply Unit",
    price: 135,
    num: 1002,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20750CatridgeT02S2,
    productName: "Ink For Printer 20750 Catridge T02S2",
    price: 135,
    num: 1003,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.inkT9741,
    productName: "Ink 869 Catridge T9741",
    price: 140,
    num: 1004,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.inkT9742,
    productName: "Ink 869 Catridge T9742",
    price: 140,
    num: 1005,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.inkT9741,
    productName: "Ink 869 Catridge T9741",
    price: 140,
    num: 1006,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.inkT9744,
    productName: "Ink 869 Catridge T9744",
    price: 140,
    num: 1007,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20600CatridgeT02Q1,
    productName: "Ink 20600 Catridge T02Q1",
    price: 250,
    num: 1008,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20600CatridgeT02Q2,
    productName: "Ink 20600 Catridge T02Q1",
    price: 250,
    num: 1009,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20600CatridgeT02Q3,
    productName: "Ink 20600 Catridge T02Q3",
    price: 250,
    num: 1010,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20600CatridgeT02Q4,
    productName: "Ink 20600 Catridge T02Q4",
    price: 250,
    num: 1011,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20750CatridgeT02S1,
    productName: "Ink 20750 Catridge T02S1",
    price: 250,
    num: 1012,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20750CatridgeT02S3,
    productName: "Ink 20750 Catridge T02S3",
    price: 250,
    num: 1013,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20750CatridgeT02S4,
    productName: "Ink 20750 Catridge T02S4",
    price: 250,
    num: 1014,
  ),
];

List<CustomProductItem> productInkjetPrinterList = [
  const CustomProductItem(
    productImg: AppImgAsset.wfc869r1,
    productName: "WorkForce Pro WF-C869R Network Multifunction Color Printer",
    price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.l1300,
    productName: "EcoTank L1300",
    price: 490,
    num: 1016,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.l1800,
    productName: "EcoTank L1800",
    price: 730,
    num: 1017,
  ),
];
List<CustomProductItem> productProjectorList = [
  const CustomProductItem(
    productImg: AppImgAsset.projectorEBE01,
    productName: "Projector EB-E01",
    price: 400,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.projectorEBX06,
    productName: "Projector EB-X06",
    price: 450,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.projectorEBX51,
    productName: "Projector EB-X51",
    price: 410,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.projectorEHTW7100,
    productName: "Projector EH-TW7100",
    //price: 400,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.projectorE10,
    productName: "projector EB-E10",
    price: 440,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.projectorEBFH06,
    productName: "projector Epson EB-FH06",
    price: 750,
    num: 1015,
  ),
];

List<CustomProductItem> productScannerList = [
  const CustomProductItem(
    productImg: AppImgAsset.scannerDs1630,
    productName: "Scanner Ds-1630",
    price: 255,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS1660,
    productName: "Scanner Ds-1660",
    //price: 255,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS30000,
    productName: "Scanner Ds-30000",
    price: 1800,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS310,
    productName: "Scanner Ds-310",
    price: 200,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS32000,
    productName: "Scanner Ds-32000",
    price: 2150,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS410,
    productName: "Scanner Ds-410",
    price: 275,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS530,
    productName: "Scanner Ds-530",
    price: 300,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS730,
    productName: "Scanner Ds-730",
    //price: 255,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS770,
    productName: "Scanner Ds-770",
    price: 400,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS870,
    productName: "Scanner Ds-870",
    price: 460,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS970,
    productName: "Scanner Ds-970",
    //price: 255,
    num: 1015,
  ),
];
List<CustomProductItem> productPOSList = [
  const CustomProductItem(
    productImg: AppImgAsset.posEum30,
    productName: "Epson EU-m30",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.postmt20lll,
    productName: "Epson TM-T20III Series",
    price: 215,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.postmt88vl,
    productName: "Epson TM-T88VI-iHub Series",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.postmu220,
    productName: "Epson TM-U220",
    //price: 1600,
    num: 1015,
  ),
];

List<CustomProductItem> productColorLabelList = [
  const CustomProductItem(
    productImg: AppImgAsset.labelcwc6000,
    productName: "ColorWorks CW-C6000 Series",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.labelcwc6500,
    productName: "ColorWorks CW-C6500 Series",
    //price: 1600,
    num: 1015,
  ),
];

List<CustomProductItem> productDotMatrixList = [
  const CustomProductItem(
    productImg: AppImgAsset.dot24pinimpact,
    productName: "24-Pin Impact Dot Matrix Printers",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.dot9pinimpact,
    productName: "9-Pin Impact Dot Matrix Printers",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.dotLQ2190,
    productName: "Dot Matrix LQ-2190",
    price: 550,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.dotfx2190,
    productName: "FX-2190II Impact Dot Matrix Printer",
    price: 600,
    num: 1015,
  ),
];
