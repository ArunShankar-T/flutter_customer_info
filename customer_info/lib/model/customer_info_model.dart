class CustomerInfoModel {
  List<CustomerMaster> customerMaster;
  List<Salescalender> salescalender;
  List<Routesequence> routesequence;
  List<Customerinvoice> customerinvoice;

  CustomerInfoModel(
      {this.customerMaster,
        this.salescalender,
        this.routesequence,
        this.customerinvoice});

  CustomerInfoModel.fromJson(Map<String, dynamic> json) {
    if (json['CustomerMaster'] != null) {
      customerMaster = new List<CustomerMaster>();
      json['CustomerMaster'].forEach((v) {
        customerMaster.add(new CustomerMaster.fromJson(v));
      });
    }
    if (json['salescalender'] != null) {
      salescalender = new List<Salescalender>();
      json['salescalender'].forEach((v) {
        salescalender.add(new Salescalender.fromJson(v));
      });
    }
    if (json['routesequence'] != null) {
      routesequence = new List<Routesequence>();
      json['routesequence'].forEach((v) {
        routesequence.add(new Routesequence.fromJson(v));
      });
    }
    if (json['customerinvoice'] != null) {
      customerinvoice = new List<Customerinvoice>();
      json['customerinvoice'].forEach((v) {
        customerinvoice.add(new Customerinvoice.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.customerMaster != null) {
      data['CustomerMaster'] =
          this.customerMaster.map((v) => v.toJson()).toList();
    }
    if (this.salescalender != null) {
      data['salescalender'] =
          this.salescalender.map((v) => v.toJson()).toList();
    }
    if (this.routesequence != null) {
      data['routesequence'] =
          this.routesequence.map((v) => v.toJson()).toList();
    }
    if (this.customerinvoice != null) {
      data['customerinvoice'] =
          this.customerinvoice.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CustomerMaster {
  String customercode;
  String type;
  String headofficecode;
  String routecode;
  String streetcode;
  String districtcode;
  String locationcode;
  String customersequence;
  String customername;
  String customeraddress1;
  String customeraddress2;
  String customerphone;
  String balance;
  String channelcode;
  String customercategory;
  String pricingkey;
  String promotionkey;
  String authorizeditemgrpkey;
  String messagekey1;
  String messagekey2;
  String invoicepaymentterms;
  String invoiceretailoption;
  String invoicepriceoverride;
  String invoiceretailoverride;
  String invoiceformatoption;
  String invoiceextensionopt;
  String invoicedsdpromptopt;
  String invoicecopies;
  String salesinputoprion;
  String returnsinputoption;
  String invoiceinputstyle;
  String onhandspromptopt;
  String inventoryselectopt;
  String invencontaineropt;
  String queuedreportoption;
  String surveykey;
  String itemmustkey;
  String contactname;
  String customertype;
  String callfrequency;
  String routenumber;
  String arbcustomernameshort;
  String arbcustomername;
  String arbcustomeraddress1;
  String arbcustomeraddress2;
  String hhccustomernameshort;
  String hhccustomername;
  String hhccustomeraddress1;
  String hhccustomeraddress2;
  String allowbeyondlimit;
  String tclimit;
  String activecustomer;
  String creditlimitdays;
  String forcehand;
  String renteddisplay;
  String installedchiller;
  String monthlydepreciation;
  String typeofgiveaway;
  String giveawayflag;
  String lastvisiteddate;
  String memo1;
  String memo2;
  String tcsubtype;
  String rentperc;
  String customeraddress3;
  String customercity;
  String customerstate;
  String customerzip;
  String authorizeditemlistctl;
  String invoicepriceprint;
  String messagekey3;
  String messagekey4;
  String messagekey5;
  String messagekey6;
  String orderformat;
  String enableupcprint;
  String enabledelayprint;
  String printsequence;
  String enablepriceeditinvs;
  String enablesellprevious;
  String enablesuggestsales;
  String enableautofillreturns;
  String enableautofilldamaged;
  String enablesigcapture;
  String enablereturnstrxn;
  String enableexchangetrxn;
  String enabledamagedreturns;
  String enablearcollection;
  String enablesurveyaudit;
  String enabledelivinstruct;
  String enableinvoicecomment;
  String invoicedetailentry;
  String orderdetailentry;
  String forcestockcapture;
  String enablepromotrxn;
  String alternatecode;
  String creditlimit;
  String allowcashoncreditexceed;
  String arbcustomeraddress3;
  String templateindicator;
  String templatename;
  String arbcontactname;
  String printlanguageflag;
  String quantumno;
  String lostplacementdelivs;
  String newplacementdelivs;
  String currencycode;
  String histmaxdeliveries;
  String arcustomertype;
  String custtaxkey1;
  String custtaxkey2;
  String custtaxkey3;
  String customertaxid;
  String customertaxidoptions;
  String outletsubtype;
  String volume;
  String enablegovtaxnote;
  String forwardcoverfactor;
  String enablepromoeditinvs;
  String enableaddlpromoinvs;
  String badcreditcustomer;
  String enableduplicateprinting;
  String numoutstandinginv;
  String enablefocprinting;
  String promooptions;
  String groupcode;
  String forceposcheck;
  String ancustomercode;
  String printoutletitemcode;
  String reportprintcontrol;
  String invoicelimiter;
  String exclusiveopmode;
  String returnpromotionkey;
  String invoiceformat;
  String liquorlicprint;
  String enablepromoeditords;
  String enableaddlpromoords;
  String enableaddlpromoinvoices;
  String enableposequipment;
  String enablesalestrxn;
  String enableadvancepayment;
  String printcheckdetails;
  String tcspecialdiscount;
  String spldiscountdays;
  String arabiccustomercity;
  String threshholdlimit;
  String discountkey;
  String enforcepromotion;
  String gpcustcode;
  String cashonlypromo;
  String roundnetamount;
  String roundingoffvalue;
  String partialcollection;
  String transactiontype;
  String enabledraftcopy;
  String enablebuybackfree;
  String enablecpd;
  String enablepaymentsel;
  String gpsdata;
  String fixedlatitude;
  String fixedlongitude;
  String rentkey;
  String startdate;
  String enddate;
  String definitionvalue;
  String runningvalue;
  String rentcontrol;
  String disablebalanceupdate;
  String enablecreditlimit;
  String autosettlecollection;
  String enableinvoicecopy;
  String pobox;
  String expirylimit;
  String exprunningvalue;
  String distributionkey;
  String gpssavecount;
  String graceperiod;
  String reportcustcode;
  String enablerental;
  String enableautofillsales;
  String enablebatchselection;
  String barcode;
  String gracelimit;
  String splitfree;
  String enablertnpwd;
  String statementdays;
  String visualcode;
  String advertisecode;
  String custImgCaptId;
  String priceSurveyId;
  String distributionCheckId;
  String enforcesurvey;
  String enforcepricesurvey;
  String enforceplanogram;
  String enforcecaptureimage;
  String enforcedisributioncheck;
  String enforcepos;
  String allowchequecollection;
  String enableotpforfoc;
  String division;
  String applytax;
  String taxregistrationnumber;
  String traname;
  String tranamearabic;
  String tradeexpirydate;
  String tradelicensenumber;
  String exciseregistraionnumber;
  String applyexcise;
  String exciseprint;
  String gpsvalidationendinvoice;

  CustomerMaster(
      {this.customercode,
        this.type,
        this.headofficecode,
        this.routecode,
        this.streetcode,
        this.districtcode,
        this.locationcode,
        this.customersequence,
        this.customername,
        this.customeraddress1,
        this.customeraddress2,
        this.customerphone,
        this.balance,
        this.channelcode,
        this.customercategory,
        this.pricingkey,
        this.promotionkey,
        this.authorizeditemgrpkey,
        this.messagekey1,
        this.messagekey2,
        this.invoicepaymentterms,
        this.invoiceretailoption,
        this.invoicepriceoverride,
        this.invoiceretailoverride,
        this.invoiceformatoption,
        this.invoiceextensionopt,
        this.invoicedsdpromptopt,
        this.invoicecopies,
        this.salesinputoprion,
        this.returnsinputoption,
        this.invoiceinputstyle,
        this.onhandspromptopt,
        this.inventoryselectopt,
        this.invencontaineropt,
        this.queuedreportoption,
        this.surveykey,
        this.itemmustkey,
        this.contactname,
        this.customertype,
        this.callfrequency,
        this.routenumber,
        this.arbcustomernameshort,
        this.arbcustomername,
        this.arbcustomeraddress1,
        this.arbcustomeraddress2,
        this.hhccustomernameshort,
        this.hhccustomername,
        this.hhccustomeraddress1,
        this.hhccustomeraddress2,
        this.allowbeyondlimit,
        this.tclimit,
        this.activecustomer,
        this.creditlimitdays,
        this.forcehand,
        this.renteddisplay,
        this.installedchiller,
        this.monthlydepreciation,
        this.typeofgiveaway,
        this.giveawayflag,
        this.lastvisiteddate,
        this.memo1,
        this.memo2,
        this.tcsubtype,
        this.rentperc,
        this.customeraddress3,
        this.customercity,
        this.customerstate,
        this.customerzip,
        this.authorizeditemlistctl,
        this.invoicepriceprint,
        this.messagekey3,
        this.messagekey4,
        this.messagekey5,
        this.messagekey6,
        this.orderformat,
        this.enableupcprint,
        this.enabledelayprint,
        this.printsequence,
        this.enablepriceeditinvs,
        this.enablesellprevious,
        this.enablesuggestsales,
        this.enableautofillreturns,
        this.enableautofilldamaged,
        this.enablesigcapture,
        this.enablereturnstrxn,
        this.enableexchangetrxn,
        this.enabledamagedreturns,
        this.enablearcollection,
        this.enablesurveyaudit,
        this.enabledelivinstruct,
        this.enableinvoicecomment,
        this.invoicedetailentry,
        this.orderdetailentry,
        this.forcestockcapture,
        this.enablepromotrxn,
        this.alternatecode,
        this.creditlimit,
        this.allowcashoncreditexceed,
        this.arbcustomeraddress3,
        this.templateindicator,
        this.templatename,
        this.arbcontactname,
        this.printlanguageflag,
        this.quantumno,
        this.lostplacementdelivs,
        this.newplacementdelivs,
        this.currencycode,
        this.histmaxdeliveries,
        this.arcustomertype,
        this.custtaxkey1,
        this.custtaxkey2,
        this.custtaxkey3,
        this.customertaxid,
        this.customertaxidoptions,
        this.outletsubtype,
        this.volume,
        this.enablegovtaxnote,
        this.forwardcoverfactor,
        this.enablepromoeditinvs,
        this.enableaddlpromoinvs,
        this.badcreditcustomer,
        this.enableduplicateprinting,
        this.numoutstandinginv,
        this.enablefocprinting,
        this.promooptions,
        this.groupcode,
        this.forceposcheck,
        this.ancustomercode,
        this.printoutletitemcode,
        this.reportprintcontrol,
        this.invoicelimiter,
        this.exclusiveopmode,
        this.returnpromotionkey,
        this.invoiceformat,
        this.liquorlicprint,
        this.enablepromoeditords,
        this.enableaddlpromoords,
        this.enableaddlpromoinvoices,
        this.enableposequipment,
        this.enablesalestrxn,
        this.enableadvancepayment,
        this.printcheckdetails,
        this.tcspecialdiscount,
        this.spldiscountdays,
        this.arabiccustomercity,
        this.threshholdlimit,
        this.discountkey,
        this.enforcepromotion,
        this.gpcustcode,
        this.cashonlypromo,
        this.roundnetamount,
        this.roundingoffvalue,
        this.partialcollection,
        this.transactiontype,
        this.enabledraftcopy,
        this.enablebuybackfree,
        this.enablecpd,
        this.enablepaymentsel,
        this.gpsdata,
        this.fixedlatitude,
        this.fixedlongitude,
        this.rentkey,
        this.startdate,
        this.enddate,
        this.definitionvalue,
        this.runningvalue,
        this.rentcontrol,
        this.disablebalanceupdate,
        this.enablecreditlimit,
        this.autosettlecollection,
        this.enableinvoicecopy,
        this.pobox,
        this.expirylimit,
        this.exprunningvalue,
        this.distributionkey,
        this.gpssavecount,
        this.graceperiod,
        this.reportcustcode,
        this.enablerental,
        this.enableautofillsales,
        this.enablebatchselection,
        this.barcode,
        this.gracelimit,
        this.splitfree,
        this.enablertnpwd,
        this.statementdays,
        this.visualcode,
        this.advertisecode,
        this.custImgCaptId,
        this.priceSurveyId,
        this.distributionCheckId,
        this.enforcesurvey,
        this.enforcepricesurvey,
        this.enforceplanogram,
        this.enforcecaptureimage,
        this.enforcedisributioncheck,
        this.enforcepos,
        this.allowchequecollection,
        this.enableotpforfoc,
        this.division,
        this.applytax,
        this.taxregistrationnumber,
        this.traname,
        this.tranamearabic,
        this.tradeexpirydate,
        this.tradelicensenumber,
        this.exciseregistraionnumber,
        this.applyexcise,
        this.exciseprint,
        this.gpsvalidationendinvoice});

  CustomerMaster.fromJson(Map<String, dynamic> json) {
    customercode = json['customercode'];
    type = json['type'];
    headofficecode = json['headofficecode'];
    routecode = json['routecode'];
    streetcode = json['streetcode'];
    districtcode = json['districtcode'];
    locationcode = json['locationcode'];
    customersequence = json['customersequence'];
    customername = json['customername'];
    customeraddress1 = json['customeraddress1'];
    customeraddress2 = json['customeraddress2'];
    customerphone = json['customerphone'];
    balance = json['balance'];
    channelcode = json['channelcode'];
    customercategory = json['customercategory'];
    pricingkey = json['pricingkey'];
    promotionkey = json['promotionkey'];
    authorizeditemgrpkey = json['authorizeditemgrpkey'];
    messagekey1 = json['messagekey1'];
    messagekey2 = json['messagekey2'];
    invoicepaymentterms = json['invoicepaymentterms'];
    invoiceretailoption = json['invoiceretailoption'];
    invoicepriceoverride = json['invoicepriceoverride'];
    invoiceretailoverride = json['invoiceretailoverride'];
    invoiceformatoption = json['invoiceformatoption'];
    invoiceextensionopt = json['invoiceextensionopt'];
    invoicedsdpromptopt = json['invoicedsdpromptopt'];
    invoicecopies = json['invoicecopies'];
    salesinputoprion = json['salesinputoprion'];
    returnsinputoption = json['returnsinputoption'];
    invoiceinputstyle = json['invoiceinputstyle'];
    onhandspromptopt = json['onhandspromptopt'];
    inventoryselectopt = json['inventoryselectopt'];
    invencontaineropt = json['invencontaineropt'];
    queuedreportoption = json['queuedreportoption'];
    surveykey = json['surveykey'];
    itemmustkey = json['itemmustkey'];
    contactname = json['contactname'];
    customertype = json['customertype'];
    callfrequency = json['callfrequency'];
    routenumber = json['routenumber'];
    arbcustomernameshort = json['arbcustomernameshort'];
    arbcustomername = json['arbcustomername'];
    arbcustomeraddress1 = json['arbcustomeraddress1'];
    arbcustomeraddress2 = json['arbcustomeraddress2'];
    hhccustomernameshort = json['hhccustomernameshort'];
    hhccustomername = json['hhccustomername'];
    hhccustomeraddress1 = json['hhccustomeraddress1'];
    hhccustomeraddress2 = json['hhccustomeraddress2'];
    allowbeyondlimit = json['allowbeyondlimit'];
    tclimit = json['tclimit'];
    activecustomer = json['activecustomer'];
    creditlimitdays = json['creditlimitdays'];
    forcehand = json['forcehand'];
    renteddisplay = json['renteddisplay'];
    installedchiller = json['installedchiller'];
    monthlydepreciation = json['monthlydepreciation'];
    typeofgiveaway = json['typeofgiveaway'];
    giveawayflag = json['giveawayflag'];
    lastvisiteddate = json['lastvisiteddate'];
    memo1 = json['memo1'];
    memo2 = json['memo2'];
    tcsubtype = json['tcsubtype'];
    rentperc = json['rentperc'];
    customeraddress3 = json['customeraddress3'];
    customercity = json['customercity'];
    customerstate = json['customerstate'];
    customerzip = json['customerzip'];
    authorizeditemlistctl = json['authorizeditemlistctl'];
    invoicepriceprint = json['invoicepriceprint'];
    messagekey3 = json['messagekey3'];
    messagekey4 = json['messagekey4'];
    messagekey5 = json['messagekey5'];
    messagekey6 = json['messagekey6'];
    orderformat = json['orderformat'];
    enableupcprint = json['enableupcprint'];
    enabledelayprint = json['enabledelayprint'];
    printsequence = json['printsequence'];
    enablepriceeditinvs = json['enablepriceeditinvs'];
    enablesellprevious = json['enablesellprevious'];
    enablesuggestsales = json['enablesuggestsales'];
    enableautofillreturns = json['enableautofillreturns'];
    enableautofilldamaged = json['enableautofilldamaged'];
    enablesigcapture = json['enablesigcapture'];
    enablereturnstrxn = json['enablereturnstrxn'];
    enableexchangetrxn = json['enableexchangetrxn'];
    enabledamagedreturns = json['enabledamagedreturns'];
    enablearcollection = json['enablearcollection'];
    enablesurveyaudit = json['enablesurveyaudit'];
    enabledelivinstruct = json['enabledelivinstruct'];
    enableinvoicecomment = json['enableinvoicecomment'];
    invoicedetailentry = json['invoicedetailentry'];
    orderdetailentry = json['orderdetailentry'];
    forcestockcapture = json['forcestockcapture'];
    enablepromotrxn = json['enablepromotrxn'];
    alternatecode = json['alternatecode'];
    creditlimit = json['creditlimit'];
    allowcashoncreditexceed = json['allowcashoncreditexceed'];
    arbcustomeraddress3 = json['arbcustomeraddress3'];
    templateindicator = json['templateindicator'];
    templatename = json['templatename'];
    arbcontactname = json['arbcontactname'];
    printlanguageflag = json['printlanguageflag'];
    quantumno = json['quantumno'];
    lostplacementdelivs = json['lostplacementdelivs'];
    newplacementdelivs = json['newplacementdelivs'];
    currencycode = json['currencycode'];
    histmaxdeliveries = json['histmaxdeliveries'];
    arcustomertype = json['arcustomertype'];
    custtaxkey1 = json['custtaxkey1'];
    custtaxkey2 = json['custtaxkey2'];
    custtaxkey3 = json['custtaxkey3'];
    customertaxid = json['customertaxid'];
    customertaxidoptions = json['customertaxidoptions'];
    outletsubtype = json['outletsubtype'];
    volume = json['volume'];
    enablegovtaxnote = json['enablegovtaxnote'];
    forwardcoverfactor = json['forwardcoverfactor'];
    enablepromoeditinvs = json['enablepromoeditinvs'];
    enableaddlpromoinvs = json['enableaddlpromoinvs'];
    badcreditcustomer = json['badcreditcustomer'];
    enableduplicateprinting = json['enableduplicateprinting'];
    numoutstandinginv = json['numoutstandinginv'];
    enablefocprinting = json['enablefocprinting'];
    promooptions = json['promooptions'];
    groupcode = json['groupcode'];
    forceposcheck = json['forceposcheck'];
    ancustomercode = json['ancustomercode'];
    printoutletitemcode = json['printoutletitemcode'];
    reportprintcontrol = json['reportprintcontrol'];
    invoicelimiter = json['invoicelimiter'];
    exclusiveopmode = json['exclusiveopmode'];
    returnpromotionkey = json['returnpromotionkey'];
    invoiceformat = json['invoiceformat'];
    liquorlicprint = json['liquorlicprint'];
    enablepromoeditords = json['enablepromoeditords'];
    enableaddlpromoords = json['enableaddlpromoords'];
    enableaddlpromoinvoices = json['enableaddlpromoinvoices'];
    enableposequipment = json['enableposequipment'];
    enablesalestrxn = json['enablesalestrxn'];
    enableadvancepayment = json['enableadvancepayment'];
    printcheckdetails = json['printcheckdetails'];
    tcspecialdiscount = json['tcspecialdiscount'];
    spldiscountdays = json['spldiscountdays'];
    arabiccustomercity = json['arabiccustomercity'];
    threshholdlimit = json['threshholdlimit'];
    discountkey = json['discountkey'];
    enforcepromotion = json['enforcepromotion'];
    gpcustcode = json['gpcustcode'];
    cashonlypromo = json['cashonlypromo'];
    roundnetamount = json['roundnetamount'];
    roundingoffvalue = json['roundingoffvalue'];
    partialcollection = json['partialcollection'];
    transactiontype = json['transactiontype'];
    enabledraftcopy = json['enabledraftcopy'];
    enablebuybackfree = json['enablebuybackfree'];
    enablecpd = json['enablecpd'];
    enablepaymentsel = json['enablepaymentsel'];
    gpsdata = json['gpsdata'];
    fixedlatitude = json['fixedlatitude'];
    fixedlongitude = json['fixedlongitude'];
    rentkey = json['rentkey'];
    startdate = json['startdate'];
    enddate = json['enddate'];
    definitionvalue = json['definitionvalue'];
    runningvalue = json['runningvalue'];
    rentcontrol = json['rentcontrol'];
    disablebalanceupdate = json['disablebalanceupdate'];
    enablecreditlimit = json['enablecreditlimit'];
    autosettlecollection = json['autosettlecollection'];
    enableinvoicecopy = json['enableinvoicecopy'];
    pobox = json['pobox'];
    expirylimit = json['expirylimit'];
    exprunningvalue = json['exprunningvalue'];
    distributionkey = json['distributionkey'];
    gpssavecount = json['gpssavecount'];
    graceperiod = json['graceperiod'];
    reportcustcode = json['reportcustcode'];
    enablerental = json['enablerental'];
    enableautofillsales = json['enableautofillsales'];
    enablebatchselection = json['enablebatchselection'];
    barcode = json['barcode'];
    gracelimit = json['gracelimit'];
    splitfree = json['splitfree'];
    enablertnpwd = json['enablertnpwd'];
    statementdays = json['statementdays'];
    visualcode = json['visualcode'];
    advertisecode = json['advertisecode'];
    custImgCaptId = json['cust_img_capt_id'];
    priceSurveyId = json['price_survey_id'];
    distributionCheckId = json['distribution_check_id'];
    enforcesurvey = json['enforcesurvey'];
    enforcepricesurvey = json['enforcepricesurvey'];
    enforceplanogram = json['enforceplanogram'];
    enforcecaptureimage = json['enforcecaptureimage'];
    enforcedisributioncheck = json['enforcedisributioncheck'];
    enforcepos = json['enforcepos'];
    allowchequecollection = json['allowchequecollection'];
    enableotpforfoc = json['enableotpforfoc'];
    division = json['division'];
    applytax = json['applytax'];
    taxregistrationnumber = json['taxregistrationnumber'];
    traname = json['traname'];
    tranamearabic = json['tranamearabic'];
    tradeexpirydate = json['tradeexpirydate'];
    tradelicensenumber = json['tradelicensenumber'];
    exciseregistraionnumber = json['exciseregistraionnumber'];
    applyexcise = json['applyexcise'];
    exciseprint = json['exciseprint'];
    gpsvalidationendinvoice = json['gpsvalidationendinvoice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customercode'] = this.customercode;
    data['type'] = this.type;
    data['headofficecode'] = this.headofficecode;
    data['routecode'] = this.routecode;
    data['streetcode'] = this.streetcode;
    data['districtcode'] = this.districtcode;
    data['locationcode'] = this.locationcode;
    data['customersequence'] = this.customersequence;
    data['customername'] = this.customername;
    data['customeraddress1'] = this.customeraddress1;
    data['customeraddress2'] = this.customeraddress2;
    data['customerphone'] = this.customerphone;
    data['balance'] = this.balance;
    data['channelcode'] = this.channelcode;
    data['customercategory'] = this.customercategory;
    data['pricingkey'] = this.pricingkey;
    data['promotionkey'] = this.promotionkey;
    data['authorizeditemgrpkey'] = this.authorizeditemgrpkey;
    data['messagekey1'] = this.messagekey1;
    data['messagekey2'] = this.messagekey2;
    data['invoicepaymentterms'] = this.invoicepaymentterms;
    data['invoiceretailoption'] = this.invoiceretailoption;
    data['invoicepriceoverride'] = this.invoicepriceoverride;
    data['invoiceretailoverride'] = this.invoiceretailoverride;
    data['invoiceformatoption'] = this.invoiceformatoption;
    data['invoiceextensionopt'] = this.invoiceextensionopt;
    data['invoicedsdpromptopt'] = this.invoicedsdpromptopt;
    data['invoicecopies'] = this.invoicecopies;
    data['salesinputoprion'] = this.salesinputoprion;
    data['returnsinputoption'] = this.returnsinputoption;
    data['invoiceinputstyle'] = this.invoiceinputstyle;
    data['onhandspromptopt'] = this.onhandspromptopt;
    data['inventoryselectopt'] = this.inventoryselectopt;
    data['invencontaineropt'] = this.invencontaineropt;
    data['queuedreportoption'] = this.queuedreportoption;
    data['surveykey'] = this.surveykey;
    data['itemmustkey'] = this.itemmustkey;
    data['contactname'] = this.contactname;
    data['customertype'] = this.customertype;
    data['callfrequency'] = this.callfrequency;
    data['routenumber'] = this.routenumber;
    data['arbcustomernameshort'] = this.arbcustomernameshort;
    data['arbcustomername'] = this.arbcustomername;
    data['arbcustomeraddress1'] = this.arbcustomeraddress1;
    data['arbcustomeraddress2'] = this.arbcustomeraddress2;
    data['hhccustomernameshort'] = this.hhccustomernameshort;
    data['hhccustomername'] = this.hhccustomername;
    data['hhccustomeraddress1'] = this.hhccustomeraddress1;
    data['hhccustomeraddress2'] = this.hhccustomeraddress2;
    data['allowbeyondlimit'] = this.allowbeyondlimit;
    data['tclimit'] = this.tclimit;
    data['activecustomer'] = this.activecustomer;
    data['creditlimitdays'] = this.creditlimitdays;
    data['forcehand'] = this.forcehand;
    data['renteddisplay'] = this.renteddisplay;
    data['installedchiller'] = this.installedchiller;
    data['monthlydepreciation'] = this.monthlydepreciation;
    data['typeofgiveaway'] = this.typeofgiveaway;
    data['giveawayflag'] = this.giveawayflag;
    data['lastvisiteddate'] = this.lastvisiteddate;
    data['memo1'] = this.memo1;
    data['memo2'] = this.memo2;
    data['tcsubtype'] = this.tcsubtype;
    data['rentperc'] = this.rentperc;
    data['customeraddress3'] = this.customeraddress3;
    data['customercity'] = this.customercity;
    data['customerstate'] = this.customerstate;
    data['customerzip'] = this.customerzip;
    data['authorizeditemlistctl'] = this.authorizeditemlistctl;
    data['invoicepriceprint'] = this.invoicepriceprint;
    data['messagekey3'] = this.messagekey3;
    data['messagekey4'] = this.messagekey4;
    data['messagekey5'] = this.messagekey5;
    data['messagekey6'] = this.messagekey6;
    data['orderformat'] = this.orderformat;
    data['enableupcprint'] = this.enableupcprint;
    data['enabledelayprint'] = this.enabledelayprint;
    data['printsequence'] = this.printsequence;
    data['enablepriceeditinvs'] = this.enablepriceeditinvs;
    data['enablesellprevious'] = this.enablesellprevious;
    data['enablesuggestsales'] = this.enablesuggestsales;
    data['enableautofillreturns'] = this.enableautofillreturns;
    data['enableautofilldamaged'] = this.enableautofilldamaged;
    data['enablesigcapture'] = this.enablesigcapture;
    data['enablereturnstrxn'] = this.enablereturnstrxn;
    data['enableexchangetrxn'] = this.enableexchangetrxn;
    data['enabledamagedreturns'] = this.enabledamagedreturns;
    data['enablearcollection'] = this.enablearcollection;
    data['enablesurveyaudit'] = this.enablesurveyaudit;
    data['enabledelivinstruct'] = this.enabledelivinstruct;
    data['enableinvoicecomment'] = this.enableinvoicecomment;
    data['invoicedetailentry'] = this.invoicedetailentry;
    data['orderdetailentry'] = this.orderdetailentry;
    data['forcestockcapture'] = this.forcestockcapture;
    data['enablepromotrxn'] = this.enablepromotrxn;
    data['alternatecode'] = this.alternatecode;
    data['creditlimit'] = this.creditlimit;
    data['allowcashoncreditexceed'] = this.allowcashoncreditexceed;
    data['arbcustomeraddress3'] = this.arbcustomeraddress3;
    data['templateindicator'] = this.templateindicator;
    data['templatename'] = this.templatename;
    data['arbcontactname'] = this.arbcontactname;
    data['printlanguageflag'] = this.printlanguageflag;
    data['quantumno'] = this.quantumno;
    data['lostplacementdelivs'] = this.lostplacementdelivs;
    data['newplacementdelivs'] = this.newplacementdelivs;
    data['currencycode'] = this.currencycode;
    data['histmaxdeliveries'] = this.histmaxdeliveries;
    data['arcustomertype'] = this.arcustomertype;
    data['custtaxkey1'] = this.custtaxkey1;
    data['custtaxkey2'] = this.custtaxkey2;
    data['custtaxkey3'] = this.custtaxkey3;
    data['customertaxid'] = this.customertaxid;
    data['customertaxidoptions'] = this.customertaxidoptions;
    data['outletsubtype'] = this.outletsubtype;
    data['volume'] = this.volume;
    data['enablegovtaxnote'] = this.enablegovtaxnote;
    data['forwardcoverfactor'] = this.forwardcoverfactor;
    data['enablepromoeditinvs'] = this.enablepromoeditinvs;
    data['enableaddlpromoinvs'] = this.enableaddlpromoinvs;
    data['badcreditcustomer'] = this.badcreditcustomer;
    data['enableduplicateprinting'] = this.enableduplicateprinting;
    data['numoutstandinginv'] = this.numoutstandinginv;
    data['enablefocprinting'] = this.enablefocprinting;
    data['promooptions'] = this.promooptions;
    data['groupcode'] = this.groupcode;
    data['forceposcheck'] = this.forceposcheck;
    data['ancustomercode'] = this.ancustomercode;
    data['printoutletitemcode'] = this.printoutletitemcode;
    data['reportprintcontrol'] = this.reportprintcontrol;
    data['invoicelimiter'] = this.invoicelimiter;
    data['exclusiveopmode'] = this.exclusiveopmode;
    data['returnpromotionkey'] = this.returnpromotionkey;
    data['invoiceformat'] = this.invoiceformat;
    data['liquorlicprint'] = this.liquorlicprint;
    data['enablepromoeditords'] = this.enablepromoeditords;
    data['enableaddlpromoords'] = this.enableaddlpromoords;
    data['enableaddlpromoinvoices'] = this.enableaddlpromoinvoices;
    data['enableposequipment'] = this.enableposequipment;
    data['enablesalestrxn'] = this.enablesalestrxn;
    data['enableadvancepayment'] = this.enableadvancepayment;
    data['printcheckdetails'] = this.printcheckdetails;
    data['tcspecialdiscount'] = this.tcspecialdiscount;
    data['spldiscountdays'] = this.spldiscountdays;
    data['arabiccustomercity'] = this.arabiccustomercity;
    data['threshholdlimit'] = this.threshholdlimit;
    data['discountkey'] = this.discountkey;
    data['enforcepromotion'] = this.enforcepromotion;
    data['gpcustcode'] = this.gpcustcode;
    data['cashonlypromo'] = this.cashonlypromo;
    data['roundnetamount'] = this.roundnetamount;
    data['roundingoffvalue'] = this.roundingoffvalue;
    data['partialcollection'] = this.partialcollection;
    data['transactiontype'] = this.transactiontype;
    data['enabledraftcopy'] = this.enabledraftcopy;
    data['enablebuybackfree'] = this.enablebuybackfree;
    data['enablecpd'] = this.enablecpd;
    data['enablepaymentsel'] = this.enablepaymentsel;
    data['gpsdata'] = this.gpsdata;
    data['fixedlatitude'] = this.fixedlatitude;
    data['fixedlongitude'] = this.fixedlongitude;
    data['rentkey'] = this.rentkey;
    data['startdate'] = this.startdate;
    data['enddate'] = this.enddate;
    data['definitionvalue'] = this.definitionvalue;
    data['runningvalue'] = this.runningvalue;
    data['rentcontrol'] = this.rentcontrol;
    data['disablebalanceupdate'] = this.disablebalanceupdate;
    data['enablecreditlimit'] = this.enablecreditlimit;
    data['autosettlecollection'] = this.autosettlecollection;
    data['enableinvoicecopy'] = this.enableinvoicecopy;
    data['pobox'] = this.pobox;
    data['expirylimit'] = this.expirylimit;
    data['exprunningvalue'] = this.exprunningvalue;
    data['distributionkey'] = this.distributionkey;
    data['gpssavecount'] = this.gpssavecount;
    data['graceperiod'] = this.graceperiod;
    data['reportcustcode'] = this.reportcustcode;
    data['enablerental'] = this.enablerental;
    data['enableautofillsales'] = this.enableautofillsales;
    data['enablebatchselection'] = this.enablebatchselection;
    data['barcode'] = this.barcode;
    data['gracelimit'] = this.gracelimit;
    data['splitfree'] = this.splitfree;
    data['enablertnpwd'] = this.enablertnpwd;
    data['statementdays'] = this.statementdays;
    data['visualcode'] = this.visualcode;
    data['advertisecode'] = this.advertisecode;
    data['cust_img_capt_id'] = this.custImgCaptId;
    data['price_survey_id'] = this.priceSurveyId;
    data['distribution_check_id'] = this.distributionCheckId;
    data['enforcesurvey'] = this.enforcesurvey;
    data['enforcepricesurvey'] = this.enforcepricesurvey;
    data['enforceplanogram'] = this.enforceplanogram;
    data['enforcecaptureimage'] = this.enforcecaptureimage;
    data['enforcedisributioncheck'] = this.enforcedisributioncheck;
    data['enforcepos'] = this.enforcepos;
    data['allowchequecollection'] = this.allowchequecollection;
    data['enableotpforfoc'] = this.enableotpforfoc;
    data['division'] = this.division;
    data['applytax'] = this.applytax;
    data['taxregistrationnumber'] = this.taxregistrationnumber;
    data['traname'] = this.traname;
    data['tranamearabic'] = this.tranamearabic;
    data['tradeexpirydate'] = this.tradeexpirydate;
    data['tradelicensenumber'] = this.tradelicensenumber;
    data['exciseregistraionnumber'] = this.exciseregistraionnumber;
    data['applyexcise'] = this.applyexcise;
    data['exciseprint'] = this.exciseprint;
    data['gpsvalidationendinvoice'] = this.gpsvalidationendinvoice;
    return data;
  }
}

class Salescalender {
  String salesyear;
  String weeknumber;
  String weekstartdate;
  String weekenddate;
  String rp32weeknumber;
  String salesperiod;

  Salescalender(
      {this.salesyear,
        this.weeknumber,
        this.weekstartdate,
        this.weekenddate,
        this.rp32weeknumber,
        this.salesperiod});

  Salescalender.fromJson(Map<String, dynamic> json) {
    salesyear = json['salesyear'];
    weeknumber = json['weeknumber'];
    weekstartdate = json['weekstartdate'];
    weekenddate = json['weekenddate'];
    rp32weeknumber = json['rp32weeknumber'];
    salesperiod = json['salesperiod'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['salesyear'] = this.salesyear;
    data['weeknumber'] = this.weeknumber;
    data['weekstartdate'] = this.weekstartdate;
    data['weekenddate'] = this.weekenddate;
    data['rp32weeknumber'] = this.rp32weeknumber;
    data['salesperiod'] = this.salesperiod;
    return data;
  }
}

class Routesequence {
  String rp32weeknumber;
  String routecode;
  String customercode;
  String callrestrictiondays1;
  String callrestrictiondays2;
  String callrestrictiondays3;
  String callrestrictiondays4;
  String callrestrictiondays5;
  String callrestrictiondays6;
  String callrestrictiondays7;
  String monseq;
  String tueseq;
  String wedseq;
  String thuseq;
  String friseq;
  String satseq;
  String sunseq;

  Routesequence(
      {this.rp32weeknumber,
        this.routecode,
        this.customercode,
        this.callrestrictiondays1,
        this.callrestrictiondays2,
        this.callrestrictiondays3,
        this.callrestrictiondays4,
        this.callrestrictiondays5,
        this.callrestrictiondays6,
        this.callrestrictiondays7,
        this.monseq,
        this.tueseq,
        this.wedseq,
        this.thuseq,
        this.friseq,
        this.satseq,
        this.sunseq});

  Routesequence.fromJson(Map<String, dynamic> json) {
    rp32weeknumber = json['rp32weeknumber'];
    routecode = json['routecode'];
    customercode = json['customercode'];
    callrestrictiondays1 = json['callrestrictiondays1'];
    callrestrictiondays2 = json['callrestrictiondays2'];
    callrestrictiondays3 = json['callrestrictiondays3'];
    callrestrictiondays4 = json['callrestrictiondays4'];
    callrestrictiondays5 = json['callrestrictiondays5'];
    callrestrictiondays6 = json['callrestrictiondays6'];
    callrestrictiondays7 = json['callrestrictiondays7'];
    monseq = json['monseq'];
    tueseq = json['tueseq'];
    wedseq = json['wedseq'];
    thuseq = json['thuseq'];
    friseq = json['friseq'];
    satseq = json['satseq'];
    sunseq = json['sunseq'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rp32weeknumber'] = this.rp32weeknumber;
    data['routecode'] = this.routecode;
    data['customercode'] = this.customercode;
    data['callrestrictiondays1'] = this.callrestrictiondays1;
    data['callrestrictiondays2'] = this.callrestrictiondays2;
    data['callrestrictiondays3'] = this.callrestrictiondays3;
    data['callrestrictiondays4'] = this.callrestrictiondays4;
    data['callrestrictiondays5'] = this.callrestrictiondays5;
    data['callrestrictiondays6'] = this.callrestrictiondays6;
    data['callrestrictiondays7'] = this.callrestrictiondays7;
    data['monseq'] = this.monseq;
    data['tueseq'] = this.tueseq;
    data['wedseq'] = this.wedseq;
    data['thuseq'] = this.thuseq;
    data['friseq'] = this.friseq;
    data['satseq'] = this.satseq;
    data['sunseq'] = this.sunseq;
    return data;
  }
}

class Customerinvoice {
  String transactionkey;
  String transactiontype;
  String documentnumber;
  String invoicenumber;
  String transactiondate;
  String transactiontime;
  String customercode;
  String routecode;
  String salesmancode;
  String totalinvoiceamount;
  String totalsalesamount;
  String totalreturnamount;
  String totaldamagedamount;
  String totalfreesampleamount;
  String immediatepaid;
  String amountpaid;
  String dnamountpaid;
  String cnamountpaid;
  String invoicebalance;
  String paymenttype;
  String voidflag;
  String paymentstatus;
  String hhcinvoicenumber;
  String remarks1;
  String remarks2;
  String routestartdate;
  String erpreferencenumber;
  String mdat;
  String totalpromoamount;
  String gcpaymenttype;
  String totaltaxesamount;
  String itemlinetaxamount;
  String totaldiscountamount;
  String pdcindicator;
  String chequecollection;
  String totalexpiryamount;
  String currencycode;
  String pdcbalance;
  String totalmanualfree;
  String totallimitedfree;
  String totalrebaterent;
  String totalfixedrent;
  String data;
  String totaldiscdistributionamount;
  String totalreplacementamount;
  String pdcdate;
  String totalbuybackfreeamount;
  String duedate;

  Customerinvoice(
      {this.transactionkey,
        this.transactiontype,
        this.documentnumber,
        this.invoicenumber,
        this.transactiondate,
        this.transactiontime,
        this.customercode,
        this.routecode,
        this.salesmancode,
        this.totalinvoiceamount,
        this.totalsalesamount,
        this.totalreturnamount,
        this.totaldamagedamount,
        this.totalfreesampleamount,
        this.immediatepaid,
        this.amountpaid,
        this.dnamountpaid,
        this.cnamountpaid,
        this.invoicebalance,
        this.paymenttype,
        this.voidflag,
        this.paymentstatus,
        this.hhcinvoicenumber,
        this.remarks1,
        this.remarks2,
        this.routestartdate,
        this.erpreferencenumber,
        this.mdat,
        this.totalpromoamount,
        this.gcpaymenttype,
        this.totaltaxesamount,
        this.itemlinetaxamount,
        this.totaldiscountamount,
        this.pdcindicator,
        this.chequecollection,
        this.totalexpiryamount,
        this.currencycode,
        this.pdcbalance,
        this.totalmanualfree,
        this.totallimitedfree,
        this.totalrebaterent,
        this.totalfixedrent,
        this.data,
        this.totaldiscdistributionamount,
        this.totalreplacementamount,
        this.pdcdate,
        this.totalbuybackfreeamount,
        this.duedate});

  Customerinvoice.fromJson(Map<String, dynamic> json) {
    transactionkey = json['transactionkey'];
    transactiontype = json['transactiontype'];
    documentnumber = json['documentnumber'];
    invoicenumber = json['invoicenumber'];
    transactiondate = json['transactiondate'];
    transactiontime = json['transactiontime'];
    customercode = json['customercode'];
    routecode = json['routecode'];
    salesmancode = json['salesmancode'];
    totalinvoiceamount = json['totalinvoiceamount'];
    totalsalesamount = json['totalsalesamount'];
    totalreturnamount = json['totalreturnamount'];
    totaldamagedamount = json['totaldamagedamount'];
    totalfreesampleamount = json['totalfreesampleamount'];
    immediatepaid = json['immediatepaid'];
    amountpaid = json['amountpaid'];
    dnamountpaid = json['dnamountpaid'];
    cnamountpaid = json['cnamountpaid'];
    invoicebalance = json['invoicebalance'];
    paymenttype = json['paymenttype'];
    voidflag = json['voidflag'];
    paymentstatus = json['paymentstatus'];
    hhcinvoicenumber = json['hhcinvoicenumber'];
    remarks1 = json['remarks1'];
    remarks2 = json['remarks2'];
    routestartdate = json['routestartdate'];
    erpreferencenumber = json['erpreferencenumber'];
    mdat = json['mdat'];
    totalpromoamount = json['totalpromoamount'];
    gcpaymenttype = json['gcpaymenttype'];
    totaltaxesamount = json['totaltaxesamount'];
    itemlinetaxamount = json['itemlinetaxamount'];
    totaldiscountamount = json['totaldiscountamount'];
    pdcindicator = json['pdcindicator'];
    chequecollection = json['chequecollection'];
    totalexpiryamount = json['totalexpiryamount'];
    currencycode = json['currencycode'];
    pdcbalance = json['pdcbalance'];
    totalmanualfree = json['totalmanualfree'];
    totallimitedfree = json['totallimitedfree'];
    totalrebaterent = json['totalrebaterent'];
    totalfixedrent = json['totalfixedrent'];
    data = json['data'];
    totaldiscdistributionamount = json['totaldiscdistributionamount'];
    totalreplacementamount = json['totalreplacementamount'];
    pdcdate = json['pdcdate'];
    totalbuybackfreeamount = json['totalbuybackfreeamount'];
    duedate = json['duedate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['transactionkey'] = this.transactionkey;
    data['transactiontype'] = this.transactiontype;
    data['documentnumber'] = this.documentnumber;
    data['invoicenumber'] = this.invoicenumber;
    data['transactiondate'] = this.transactiondate;
    data['transactiontime'] = this.transactiontime;
    data['customercode'] = this.customercode;
    data['routecode'] = this.routecode;
    data['salesmancode'] = this.salesmancode;
    data['totalinvoiceamount'] = this.totalinvoiceamount;
    data['totalsalesamount'] = this.totalsalesamount;
    data['totalreturnamount'] = this.totalreturnamount;
    data['totaldamagedamount'] = this.totaldamagedamount;
    data['totalfreesampleamount'] = this.totalfreesampleamount;
    data['immediatepaid'] = this.immediatepaid;
    data['amountpaid'] = this.amountpaid;
    data['dnamountpaid'] = this.dnamountpaid;
    data['cnamountpaid'] = this.cnamountpaid;
    data['invoicebalance'] = this.invoicebalance;
    data['paymenttype'] = this.paymenttype;
    data['voidflag'] = this.voidflag;
    data['paymentstatus'] = this.paymentstatus;
    data['hhcinvoicenumber'] = this.hhcinvoicenumber;
    data['remarks1'] = this.remarks1;
    data['remarks2'] = this.remarks2;
    data['routestartdate'] = this.routestartdate;
    data['erpreferencenumber'] = this.erpreferencenumber;
    data['mdat'] = this.mdat;
    data['totalpromoamount'] = this.totalpromoamount;
    data['gcpaymenttype'] = this.gcpaymenttype;
    data['totaltaxesamount'] = this.totaltaxesamount;
    data['itemlinetaxamount'] = this.itemlinetaxamount;
    data['totaldiscountamount'] = this.totaldiscountamount;
    data['pdcindicator'] = this.pdcindicator;
    data['chequecollection'] = this.chequecollection;
    data['totalexpiryamount'] = this.totalexpiryamount;
    data['currencycode'] = this.currencycode;
    data['pdcbalance'] = this.pdcbalance;
    data['totalmanualfree'] = this.totalmanualfree;
    data['totallimitedfree'] = this.totallimitedfree;
    data['totalrebaterent'] = this.totalrebaterent;
    data['totalfixedrent'] = this.totalfixedrent;
    data['data'] = this.data;
    data['totaldiscdistributionamount'] = this.totaldiscdistributionamount;
    data['totalreplacementamount'] = this.totalreplacementamount;
    data['pdcdate'] = this.pdcdate;
    data['totalbuybackfreeamount'] = this.totalbuybackfreeamount;
    data['duedate'] = this.duedate;
    return data;
  }
}
