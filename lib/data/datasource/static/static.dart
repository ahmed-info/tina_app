import 'package:tina/core/constant/imgAsset.dart';
import 'package:get/get.dart';
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
  //epson
  SubCategoryModel(title: "Projectors", imgUrl: AppImgAsset.projector),
  SubCategoryModel(title: "Scanners", imgUrl: AppImgAsset.scanner),
  SubCategoryModel(title: "POS", imgUrl: AppImgAsset.pos),
  SubCategoryModel(
      title: "Colour Label Printers", imgUrl: AppImgAsset.colourLabelPrinter),
  SubCategoryModel(title: "Dot-Matrex Printers", imgUrl: AppImgAsset.dotMatrix),
  SubCategoryModel(title: "Ink", imgUrl: AppImgAsset.ink),
  SubCategoryModel(title: "Inkjet Printer", imgUrl: AppImgAsset.inkjet),

  //technoware
  SubCategoryModel(title: "UPS-DC", imgUrl: AppImgAsset.projector),
  SubCategoryModel(title: "UPS Line Interactive", imgUrl: AppImgAsset.scanner),
  SubCategoryModel(
      title: "UPS Line Interactive Sinewave", imgUrl: AppImgAsset.pos),
  SubCategoryModel(
      title: "UPS Single Phase Online", imgUrl: AppImgAsset.colourLabelPrinter),
  SubCategoryModel(
      title: "UPS Three Phase Online", imgUrl: AppImgAsset.dotMatrix),
  SubCategoryModel(title: "Stablizers", imgUrl: AppImgAsset.ink),
  SubCategoryModel(title: "Batteries", imgUrl: AppImgAsset.inkjet),
  SubCategoryModel(title: "UPS Accessories", imgUrl: AppImgAsset.inkjet),

  //computer
  SubCategoryModel(title: "Laptop", imgUrl: AppImgAsset.labtop),
  SubCategoryModel(title: "System", imgUrl: AppImgAsset.system),
  SubCategoryModel(title: "PC Component", imgUrl: AppImgAsset.pcComponents),

  //camera
  SubCategoryModel(title: 'Camera', imgUrl: AppImgAsset.camera),
  SubCategoryModel(title: 'Lens', imgUrl: AppImgAsset.cameraLens),

  //k&f
  SubCategoryModel(title: 'BackPack', imgUrl: AppImgAsset.backPack),
  SubCategoryModel(title: 'Reflectors', imgUrl: AppImgAsset.reflectors),
  SubCategoryModel(title: 'Microphone', imgUrl: AppImgAsset.microphone),

  //budget
  SubCategoryModel(title: 'Table Descktop', imgUrl: AppImgAsset.tableDesc),
  SubCategoryModel(title: 'Chair', imgUrl: AppImgAsset.chair),
  //gaming
  SubCategoryModel(title: 'Table Descktop', imgUrl: AppImgAsset.tableDesc),
  SubCategoryModel(title: 'Chair', imgUrl: AppImgAsset.chair),
];

List<String> categoryList = [
  'Epson'.tr,
  'Tecnoware'.tr,
  'Computer'.tr,
  'Camera'.tr,
  'K&F'.tr,
  'Budget'.tr,
  'Gaming'.tr
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
    categoryNameItem: "Inkjet Printer", num: 6,
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
];

List<CustomCategoryItem> subCategoryComputerList = [
   CustomCategoryItem(
    //productName: "Labtop",
    categoryImgItem: AppImgAsset.labtop,
    categoryNameItem: "Laptop".tr, num: 15,
  ),
  const CustomCategoryItem(
    //productName: "System",
    categoryImgItem: AppImgAsset.system,
    categoryNameItem: "System", num: 16,
  ),
  const CustomCategoryItem(
    //productName: "PC Components",
    categoryImgItem: AppImgAsset.pcComponents,
    categoryNameItem: "PC Components", num: 17,
  ),
];

List<CustomCategoryItem> subCategoryCameraList = [
  const CustomCategoryItem(
    //productName: "Camera",
    categoryImgItem: AppImgAsset.camera,
    categoryNameItem: "Camera", num: 18,
  ),
  const CustomCategoryItem(
    //productName: "Camera",
    categoryImgItem: AppImgAsset.cameraLens,
    categoryNameItem: "Camera", num: 19,
  ),
];

List<CustomCategoryItem> subCategoryKAndFList = [
  const CustomCategoryItem(
    //productName: "BackPack",
    categoryImgItem: AppImgAsset.backPack,
    categoryNameItem: "BackPack", num: 20,
  ),
  const CustomCategoryItem(
    //productName: "Reflectors",
    categoryImgItem: AppImgAsset.reflectors,
    categoryNameItem: "Reflectors", num: 21,
  ),
  const CustomCategoryItem(
    //productName: "Microphone",
    categoryImgItem: AppImgAsset.microphone,
    categoryNameItem: "Microphone", num: 22,
  ),
];

List<CustomCategoryItem> subCategoryBudgetList = [
  const CustomCategoryItem(
    //productName: "Table Descktop",
    categoryImgItem: AppImgAsset.tableDesc,
    categoryNameItem: "Table Descktop", num: 23,
  ),
  const CustomCategoryItem(
    //productName: "Chair",
    categoryImgItem: AppImgAsset.chair,
    categoryNameItem: "Chair",
    num: 24,
  ),
];

List<CustomCategoryItem> subCategoryGamesList = [
  const CustomCategoryItem(
    //productName: "Table Descktop",
    categoryImgItem: AppImgAsset.tableDesc,
    categoryNameItem: "Table Descktop", num: 25,
  ),
  const CustomCategoryItem(
    //productName: "Chair",
    categoryImgItem: AppImgAsset.chair,
    categoryNameItem: "Chair", num: 26,
  ),
];

////////////////Start AllSub Category///////////////////////////
List<List<CustomCategoryItem>> allSubCategory = [
  subCategoryEpsonList,
  subCategoryTechnowareList,
  subCategoryComputerList,
  subCategoryCameraList,
  subCategoryKAndFList,
  subCategoryBudgetList,
  subCategoryGamesList,
];
//////////////End AllSub Category///////////////////////////////////
////////////////////////////////////////////////////
//all product epson
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

//all product technoware
List<CustomProductItem> productUPSDCList = [
  const CustomProductItem(
    productImg: AppImgAsset.upsDC,
    productName: "Desk-Tower 18W",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsDC,
    productName: "Desk-Tower 25W",
    //price: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPSLineInteractiveList = [
  const CustomProductItem(
    productImg: AppImgAsset.upsRack1100,
    productName: "UPS Rack 1100 VA",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsRack1200,
    productName: "UPS Rack 1200 VA",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsStrip1000,
    productName: "UPS Strip 1000 VA",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 1200VA SCH",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 1200VA UNI",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 1600VA SCH",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 2000AV IEC",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 2000VA UNI",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 2600VA IEC",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 2600VA UNI",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 800 VA SCH",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 800VA UNI",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 950VA SCH",
    //price: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPSLineSinewaveList = [
  const CustomProductItem(
    productImg: AppImgAsset.upsSinewave1000,
    productName: "UPS EXA PLUS 1000",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSinewave1000,
    productName: "UPS EXA PLUS 1500",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSinewave1000,
    productName: "UPS EXA PLUS 2000",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSinewave3000,
    productName: "UPS EXA PLUS 3000",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSinewave3000,
    productName: "UPS EXA PLUS 4500",
    //price: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPsSinglePhaseList = [
  const CustomProductItem(
    productImg: AppImgAsset.upsSingleRack10KV,
    productName: "Rack Mount 10KVA",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingleRack6KV,
    productName: "Rack Mount 6 KVA",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingleRack1200,
    productName: "Rack-Tower 1200VA IEC RT",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingleRack1200,
    productName: "Rack-Tower 2400VA IEC RT",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Rack-Tower 3600VA IEC RT",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 10 KVA-16 BATT.11Ah",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 10 KVA-16 BATT.9Ah",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 10 KVA-16BATT.7.2Ah",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 10 KVA-NO BATT",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 6 KVA-NO BATT",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 6-5KVA -12 BATT.9Ah",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 6KVA -16 Batt.7.2Ah",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 6KVA-16 BATT.11Ah",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 6KVA-16 BATT.9Ah",
    //price: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPsThreeList = [
  const CustomProductItem(
    productImg: AppImgAsset.upsThree,
    productName: "3/1 Tower 10 KVA-20 BATT.7,2Ah",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsThree,
    productName: "3/1 Tower 10 KVA-20 BATT.9Ah",
    //price: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsThree,
    productName: "3/1 Tower 10 KVA-NO BATT",
    //price: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPsStabe = [
  const CustomProductItem(
    productImg: AppImgAsset.upsStabe45kv,
    productName: "STABE 4,5KVA",
    //price: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPsBattery = [
  const CustomProductItem(
    productImg: AppImgAsset.upsBattery,
    productName: "12V8AH UPS Battery VRLA AGM lead acid battery",
    //price: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPsAccessory = [
  const CustomProductItem(
    productImg: 'Soon',
    productName: "Soon",
    //price: 1600,
    num: 1015,
  ),
];

List<CustomProductItem> productLaptop = [
  const CustomProductItem(
    productImg: AppImgAsset.laptopLenovo,
    productName: "Core i3 4 1T 15.6",
    price: 380,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.laptopLenovo,
    productName: "Core i5 4 1TB 15.6",
    price: 495,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.laptopLenovo,
    productName: "Core i5 12 256G 15.6",
    price: 590,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.laptopLenovo,
    productName: "Core i7 8 1T 15.6",
    price: 670,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.laptopLenovo,
    productName: "Core i7 8 1T 2G MX350 15.6",
    price: 710,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.laptopMSI,
    productName: "MSI GF63 Thin 15.6in FHD",
    price: 700,
    num: 1015,
  ),
];
List<CustomProductItem> productSystem = [
  const CustomProductItem(
    productImg: AppImgAsset.systemDell22Monitor,
    productName: "Dell 22 Monitor",
    price: 150,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.systemDellOptiplex3080i5,
    productName: "Dell Optiplex 3080 i5",
    price: 460,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.systemDellOptiplex3080i7,
    productName: "Dell Optiplex 3080 i7",
    price: 600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.systemHP22Monitor,
    productName: "HP 22 Monitor",
    price: 150,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.systemHP290G4i5,
    productName: "HP 290 G4 i5",
    price: 460,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.systemHP290G4i7,
    productName: "HP 290 G4 i7",
    price: 610,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.systemLenovo215,
    productName: "Lenovo Monitor 21.5",
    price: 155,
    num: 1015,
  ),
];

List<CustomProductItem> productCamera = [
  const CustomProductItem(
    productImg: AppImgAsset.camera2000d,
    productName: "CANON EOS 2000D",
    price: 330,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.camera250d,
    productName: "CANON EOS 250D",
    price: 550,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.camera4000d,
    productName: "CANON EOS 4000D",
    //price: 155,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.camera850d,
    productName: "Canon EOS 850D",
    price: 705,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.cameraM50_1545,
    productName: "Canon EOS M50 Compact System Camera and EF-M 15-45",
    price: 580,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.cameram55_200,
    productName: "Canon EOS M50+ EF-M 15-45mm & EF-M 55-200mm",
    price: 680,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.cameram50body,
    productName: "Canon EOS M50ll body with EF-M32mm",
    price: 490,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.camera15_45_m6,
    productName: "Canon EOS M6",
    price: 550,
    num: 1015,
  ),
];
List<CustomProductItem> productLens = [
  const CustomProductItem(
    productImg: AppImgAsset.lens4000d,
    productName: "Canon DSLR EOS 4000D DC, 18 MP, 18-55 IS Lens",
    //price: 330,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lens1635,
    productName: "Canon EF 16-35mm",
    price: 1425,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lens2470,
    productName: "Canon EF 24-70mm",
    price: 1425,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lens50mm,
    productName: "Canon EF 50mm f/1.8 STM Lens",
    price: 102,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lens85mm,
    productName: "Canon EF 85mm f/1.8 USM Medium Telephoto Lens",
    price: 320,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lens32mm,
    productName: "Canon EF-M 32mm",
    price: 360,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lens1018,
    productName: "Canon EF-S 10-18mm",
    price: 200,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lensSigma,
    productName: "Sigma 105mm F2.8 EX DG OS HSM Macro Lens",
    price: 480,
    num: 1015,
  ),
];

List<CustomProductItem> productBackPack = [
  const CustomProductItem(
    productImg: AppImgAsset.bag13_105,
    productName: "K&F Concept Alpha Backpack (Gray, 25L)",
    price: 125,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_098V1,
    productName: "15.6 Camera Backpack",
    price: 65,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_044,
    productName: "Large DSLR Camera Backpack for Travel Outdoor",
    //price: 330,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_107,
    productName: "Outdoor Camera Backpack Large Photography Bag",
    price: 100,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_122,
    productName: "Travel Camera Backpacks with Removable DSLR",
    price: 60,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_050,
    productName: "Bag K&F 13.050",
    price: 25,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_119,
    productName: "K&F Concept KF13.119",
    price: 65,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_1104,
    productName: "K&F Concept camera backpack",
    price: 65,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bagshoulder,
    productName: "Bag K&F Shoulder",
    price: 15,
    num: 1015,
  ),
];
List<CustomProductItem> productReflector = [
  const CustomProductItem(
    productImg: AppImgAsset.reflectors,
    productName: "5 in 1 Reflectors",
    price: 25,
    num: 1015,
  ),
];
List<CustomProductItem> productMicrphone = [
  const CustomProductItem(
    productImg: AppImgAsset.microphone,
    productName: "Microphone with Charging Case Plug&Play for Streaming",
    //price: 25,
    num: 1015,
  ),
];

List<CustomProductItem> productTable = [
  const CustomProductItem(
    productImg: AppImgAsset.tableGamingDesc1,
    productName: "Table Gaming Desc 1",
    //price: 25,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.tableGamingDesc2,
    productName: "Table Gaming Desc 2",
    //price: 25,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.tableGamingDesc3,
    productName: "Table Gaming Desc 3",
    //price: 25,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.tableGamingDesc4,
    productName: "Table Gaming Desc 4",
    //price: 25,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.tableGamingDesc5,
    productName: "Table Gaming Desc 5",
    //price: 25,
    num: 1015,
  ),
];

List<CustomProductItem> productChair = [
  const CustomProductItem(
    productImg: AppImgAsset.chairGaming1,
    productName: "Chair Gaming 1",
    //price: 25,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.chairGaming2,
    productName: "Chair Gaming 2",
    //price: 25,
    num: 1015,
  ),
];
