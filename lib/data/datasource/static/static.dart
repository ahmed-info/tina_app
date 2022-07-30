import 'package:tina/core/constant/app_img_asset.dart';
import 'package:get/get.dart';
import 'package:tina/data/model/onBoardingModel.dart';
import 'package:tina/data/model/subCategoryModel.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';

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
List<CustomCategoryItem> subCategoryCanonList = [
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.canon1,
    categoryNameItem: 'Canon Brand 1',
    num: 28,
  ),
  const CustomCategoryItem(
    categoryImgItem: AppImgAsset.canon2,
    categoryNameItem: 'Canon Brand 2',
    num: 29,
  )
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
    categoryImgItem: AppImgAsset.camera2000d,
    categoryNameItem: "Camera", num: 18,
  ),
  const CustomCategoryItem(
    //productName: "Camera",
    categoryImgItem: AppImgAsset.cameraLens,
    categoryNameItem: "Lens", num: 19,
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

List<List<CustomCategoryItem>> allBrand = [
  subCategoryEpsonList,
  subCategoryCanonList
];
//////////////End AllSub Category///////////////////////////////////
////////////////////////////////////////////////////
//all product epson
List<CustomProductItem> productInkList = [
  const CustomProductItem(
    productImg: AppImgAsset.ink103,
    productName: "103 EcoTank 4-colour Multipack",
    productPrice: 30,
    num: 1000,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.inkBlackXXL,
    productName: "Black XXL Ink Supply Unit",
    productPrice: 45,
    num: 1001,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.inkCyanXL,
    productName: "Cyan XL Ink Supply Unit",
    productPrice: 135,
    num: 1002,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20750CatridgeT02S2,
    productName: "Ink For Printer 20750 Catridge T02S2",
    productPrice: 135,
    num: 1003,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.inkT9741,
    productName: "Ink 869 Catridge T9741",
    productPrice: 140,
    num: 1004,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.inkT9742,
    productName: "Ink 869 Catridge T9742",
    productPrice: 140,
    num: 1005,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.inkT9741,
    productName: "Ink 869 Catridge T9741",
    productPrice: 140,
    num: 1006,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.inkT9744,
    productName: "Ink 869 Catridge T9744",
    productPrice: 140,
    num: 1007,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20600CatridgeT02Q1,
    productName: "Ink 20600 Catridge T02Q1",
    productPrice: 250,
    num: 1008,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20600CatridgeT02Q2,
    productName: "Ink 20600 Catridge T02Q1",
    productPrice: 250,
    num: 1009,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20600CatridgeT02Q3,
    productName: "Ink 20600 Catridge T02Q3",
    productPrice: 250,
    num: 1010,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20600CatridgeT02Q4,
    productName: "Ink 20600 Catridge T02Q4",
    productPrice: 250,
    num: 1011,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20750CatridgeT02S1,
    productName: "Ink 20750 Catridge T02S1",
    productPrice: 250,
    num: 1012,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20750CatridgeT02S3,
    productName: "Ink 20750 Catridge T02S3",
    productPrice: 250,
    num: 1013,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.ink20750CatridgeT02S4,
    productName: "Ink 20750 Catridge T02S4",
    productPrice: 250,
    num: 1014,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
];

List<CustomProductItem> productInkjetPrinterList = [
  const CustomProductItem(
    productImg: AppImgAsset.wfc869r1,
    productName: "WorkForce Pro WF-C869R Network Multifunction Color Printer",
    productPrice: 1600,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.l1300,
    productName: "EcoTank L1300",
    productPrice: 490,
    num: 1016,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.l1800,
    productName: "EcoTank L1800",
    productPrice: 730,
    num: 1017,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
];
List<CustomProductItem> productProjectorList = [
  const CustomProductItem(
    productImg: AppImgAsset.projectorEBE01,
    productName: "Projector EB-E01",
    productPrice: 400,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.projectorEBX06,
    productName: "Projector EB-X06",
    productPrice: 450,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.projectorEBX51,
    productName: "Projector EB-X51",
    productPrice: 410,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.projectorEHTW7100,
    productName: "Projector EH-TW7100",
    //productPrice: 400,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.projectorE10,
    productName: "projector EB-E10",
    productPrice: 440,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.projectorEBFH06,
    productName: "projector Epson EB-FH06",
    productPrice: 750,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
];

List<CustomProductItem> productScannerList = [
  const CustomProductItem(
    productImg: AppImgAsset.scannerDs1630,
    productName: "Scanner Ds-1630",
    productPrice: 255,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS1660,
    productName: "Scanner Ds-1660",
    //productPrice: 255,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS30000,
    productName: "Scanner Ds-30000",
    productPrice: 1800,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS310,
    productName: "Scanner Ds-310",
    productPrice: 200,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS32000,
    productName: "Scanner Ds-32000",
    productPrice: 2150,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS410,
    productName: "Scanner Ds-410",
    productPrice: 275,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS530,
    productName: "Scanner Ds-530",
    productPrice: 300,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS730,
    productName: "Scanner Ds-730",
    //productPrice: 255,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS770,
    productName: "Scanner Ds-770",
    productPrice: 400,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS870,
    productName: "Scanner Ds-870",
    productPrice: 460,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.scannerDS970,
    productName: "Scanner Ds-970",
    //productPrice: 255,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
];
List<CustomProductItem> productPOSList = [
  const CustomProductItem(
    productImg: AppImgAsset.posEum30,
    productName: "Epson EU-m30",
    //productPrice: 1600,
    num: 1016,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.postmt20lll,
    productName: "Epson TM-T20III Series",
    productPrice: 215,
    num: 1017,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.postmt88vl,
    productName: "Epson TM-T88VI-iHub Series",
    //productPrice: 1600,
    num: 1018,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.postmu220,
    productName: "Epson TM-U220",
    //productPrice: 1600,
    num: 1019,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
];

List<CustomProductItem> productColorLabelList = [
  const CustomProductItem(
    productImg: AppImgAsset.labelcwc6000,
    productName: "ColorWorks CW-C6000 Series",
    //productPrice: 1600,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.labelcwc6500,
    productName: "ColorWorks CW-C6500 Series",
    //productPrice: 1600,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
];

List<CustomProductItem> productDotMatrixList = [
  const CustomProductItem(
    productImg: AppImgAsset.dot24pinimpact,
    productName: "24-Pin Impact Dot Matrix Printers",
    //productPrice: 1600,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.dot9pinimpact,
    productName: "9-Pin Impact Dot Matrix Printers",
    //productPrice: 1600,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.dotLQ2190,
    productName: "Dot Matrix LQ-2190",
    productPrice: 550,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.dotfx2190,
    productName: "FX-2190II Impact Dot Matrix Printer",
    productPrice: 600,
    num: 1015,
    description:
        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
  ),
];

//all product technoware
List<CustomProductItem> productUPSDCList = [
  const CustomProductItem(
    productImg: AppImgAsset.upsDC,
    productName: "Desk-Tower 18W",
    //productPrice: 1600,
    num: 1015,
    description: "Csfdgfng sfdgfhnjm, dgfhg",
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsDC,
    productName: "Desk-Tower 25W",
    //productPrice: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPSLineInteractiveList = [
  const CustomProductItem(
    productImg: AppImgAsset.upsRack1100,
    productName: "UPS Rack 1100 VA",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsRack1200,
    productName: "UPS Rack 1200 VA",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsStrip1000,
    productName: "UPS Strip 1000 VA",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 1200VA SCH",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 1200VA UNI",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 1600VA SCH",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 2000AV IEC",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 2000VA UNI",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 2600VA IEC",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 2600VA UNI",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 800 VA SCH",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 800VA UNI",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsTower,
    productName: "Tower 950VA SCH",
    //productPrice: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPSLineSinewaveList = [
  const CustomProductItem(
    productImg: AppImgAsset.upsSinewave1000,
    productName: "UPS EXA PLUS 1000",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSinewave1000,
    productName: "UPS EXA PLUS 1500",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSinewave1000,
    productName: "UPS EXA PLUS 2000",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSinewave3000,
    productName: "UPS EXA PLUS 3000",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSinewave3000,
    productName: "UPS EXA PLUS 4500",
    //productPrice: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPsSinglePhaseList = [
  const CustomProductItem(
    productImg: AppImgAsset.upsSingleRack10KV,
    productName: "Rack Mount 10KVA",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingleRack6KV,
    productName: "Rack Mount 6 KVA",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingleRack1200,
    productName: "Rack-Tower 1200VA IEC RT",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingleRack1200,
    productName: "Rack-Tower 2400VA IEC RT",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Rack-Tower 3600VA IEC RT",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 10 KVA-16 BATT.11Ah",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 10 KVA-16 BATT.9Ah",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 10 KVA-16BATT.7.2Ah",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 10 KVA-NO BATT",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 6 KVA-NO BATT",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 6-5KVA -12 BATT.9Ah",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 6KVA -16 Batt.7.2Ah",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 6KVA-16 BATT.11Ah",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsSingle10kv16kv,
    productName: "Tower 6KVA-16 BATT.9Ah",
    //productPrice: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPsThreeList = [
  const CustomProductItem(
    productImg: AppImgAsset.upsThree,
    productName: "3/1 Tower 10 KVA-20 BATT.7,2Ah",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsThree,
    productName: "3/1 Tower 10 KVA-20 BATT.9Ah",
    //productPrice: 1600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.upsThree,
    productName: "3/1 Tower 10 KVA-NO BATT",
    //productPrice: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPsStabe = [
  const CustomProductItem(
    productImg: AppImgAsset.upsStabe45kv,
    productName: "STABE 4,5KVA",
    //productPrice: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPsBattery = [
  const CustomProductItem(
    productImg: AppImgAsset.upsBattery,
    productName: "12V8AH UPS Battery VRLA AGM lead acid battery",
    //productPrice: 1600,
    num: 1015,
  ),
];
List<CustomProductItem> productUPsAccessory = [
  const CustomProductItem(
    productImg: 'Soon',
    productName: "Soon",
    //productPrice: 1600,
    num: 1015,
  ),
];

List<CustomProductItem> productLaptop = [
  const CustomProductItem(
    productImg: AppImgAsset.laptopLenovo,
    productName: "Core i3 4 1T 15.6",
    productPrice: 380,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.laptopLenovo,
    productName: "Core i5 4 1TB 15.6",
    productPrice: 495,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.laptopLenovo,
    productName: "Core i5 12 256G 15.6",
    productPrice: 590,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.laptopLenovo,
    productName: "Core i7 8 1T 15.6",
    productPrice: 670,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.laptopLenovo,
    productName: "Core i7 8 1T 2G MX350 15.6",
    productPrice: 710,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.laptopMSI,
    productName: "MSI GF63 Thin 15.6in FHD",
    productPrice: 700,
    num: 1015,
  ),
];
List<CustomProductItem> productSystem = [
  const CustomProductItem(
    productImg: AppImgAsset.systemDell22Monitor,
    productName: "Dell 22 Monitor",
    productPrice: 150,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.systemDellOptiplex3080i5,
    productName: "Dell Optiplex 3080 i5",
    productPrice: 460,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.systemDellOptiplex3080i7,
    productName: "Dell Optiplex 3080 i7",
    productPrice: 600,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.systemHP22Monitor,
    productName: "HP 22 Monitor",
    productPrice: 150,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.systemHP290G4i5,
    productName: "HP 290 G4 i5",
    productPrice: 460,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.systemHP290G4i7,
    productName: "HP 290 G4 i7",
    productPrice: 610,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.systemLenovo215,
    productName: "Lenovo Monitor 21.5",
    productPrice: 155,
    num: 1015,
  ),
];

List<CustomProductItem> productCamera = [
  const CustomProductItem(
    productImg: AppImgAsset.camera2000d,
    productName: "CANON EOS 2000D",
    productPrice: 330,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.camera250d,
    productName: "CANON EOS 250D",
    productPrice: 550,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.camera4000d,
    productName: "CANON EOS 4000D",
    //productPrice: 155,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.camera850d,
    productName: "Canon EOS 850D",
    productPrice: 705,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.cameraM50_1545,
    productName: "Canon EOS M50 Compact System Camera and EF-M 15-45",
    productPrice: 580,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.cameram55_200,
    productName: "Canon EOS M50+ EF-M 15-45mm & EF-M 55-200mm",
    productPrice: 680,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.cameram50body,
    productName: "Canon EOS M50ll body with EF-M32mm",
    productPrice: 490,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.camera15_45_m6,
    productName: "Canon EOS M6",
    productPrice: 550,
    num: 1015,
  ),
];
List<CustomProductItem> productLens = [
  const CustomProductItem(
    productImg: AppImgAsset.lens4000d,
    productName: "Canon DSLR EOS 4000D DC, 18 MP, 18-55 IS Lens",
    //productPrice: 330,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lens1635,
    productName: "Canon EF 16-35mm",
    productPrice: 1425,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lens2470,
    productName: "Canon EF 24-70mm",
    productPrice: 1425,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lens50mm,
    productName: "Canon EF 50mm f/1.8 STM Lens",
    productPrice: 102,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lens85mm,
    productName: "Canon EF 85mm f/1.8 USM Medium Telephoto Lens",
    productPrice: 320,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lens32mm,
    productName: "Canon EF-M 32mm",
    productPrice: 360,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lens1018,
    productName: "Canon EF-S 10-18mm",
    productPrice: 200,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.lensSigma,
    productName: "Sigma 105mm F2.8 EX DG OS HSM Macro Lens",
    productPrice: 480,
    num: 1015,
  ),
];

List<CustomProductItem> productBackPack = [
  const CustomProductItem(
    productImg: AppImgAsset.bag13_105,
    productName: "K&F Concept Alpha Backpack (Gray, 25L)",
    productPrice: 125,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_098V1,
    productName: "15.6 Camera Backpack",
    productPrice: 65,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_044,
    productName: "Large DSLR Camera Backpack for Travel Outdoor",
    //productPrice: 330,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_107,
    productName: "Outdoor Camera Backpack Large Photography Bag",
    productPrice: 100,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_122,
    productName: "Travel Camera Backpacks with Removable DSLR",
    productPrice: 60,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_050,
    productName: "Bag K&F 13.050",
    productPrice: 25,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_119,
    productName: "K&F Concept KF13.119",
    productPrice: 65,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bag13_1104,
    productName: "K&F Concept camera backpack",
    productPrice: 65,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.bagshoulder,
    productName: "Bag K&F Shoulder",
    productPrice: 15,
    num: 1015,
  ),
];
List<CustomProductItem> productReflector = [
  const CustomProductItem(
    productImg: AppImgAsset.reflectors,
    productName: "5 in 1 Reflectors",
    productPrice: 25,
    num: 1015,
  ),
];
List<CustomProductItem> productMicrphone = [
  const CustomProductItem(
    productImg: AppImgAsset.microphone,
    productName: "Microphone with Charging Case Plug&Play for Streaming",
    //productPrice: 25,
    num: 1015,
  ),
];

List<CustomProductItem> productTable = [
  const CustomProductItem(
    productImg: AppImgAsset.tableGamingDesc1,
    productName: "Table Gaming Desc 1",
    //productPrice: 25,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.tableGamingDesc2,
    productName: "Table Gaming Desc 2",
    //productPrice: 25,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.tableGamingDesc3,
    productName: "Table Gaming Desc 3",
    //productPrice: 25,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.tableGamingDesc4,
    productName: "Table Gaming Desc 4",
    //productPrice: 25,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.tableGamingDesc5,
    productName: "Table Gaming Desc 5",
    //productPrice: 25,
    num: 1015,
  ),
];

List<CustomProductItem> productChair = [
  const CustomProductItem(
    productImg: AppImgAsset.chairGaming1,
    productName: "Chair Gaming 1",
    //productPrice: 25,
    num: 1015,
  ),
  const CustomProductItem(
    productImg: AppImgAsset.chairGaming2,
    productName: "Chair Gaming 2",
    //productPrice: 25,
    num: 1015,
  ),
];
