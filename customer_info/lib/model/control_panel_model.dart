class ControlPanelModel {
  List<ControlPanel> controlPanel;
  List<Setup> setup;
  List<Companydetail> companydetail;
  List<SalesmanMaster> salesmanMaster;
  List<RouteMaster> routeMaster;
  List<Synctime> synctime;
  List<CurrencyMaster> currencyMaster;
  List<Itemmustheader> itemmustheader;
  List<Itemmustdetail> itemmustdetail;

  ControlPanelModel(
      {this.controlPanel,
      this.setup,
      this.companydetail,
      this.salesmanMaster,
      this.routeMaster,
      this.synctime,
      this.currencyMaster,
      this.itemmustheader,
      this.itemmustdetail});

  ControlPanelModel.fromJson(Map<String, dynamic> json) {
    if (json['ControlPanel'] != null) {
      controlPanel = new List<ControlPanel>();
      json['ControlPanel'].forEach((v) {
        controlPanel.add(new ControlPanel.fromJson(v));
      });
    }
    if (json['Setup'] != null) {
      setup = new List<Setup>();
      json['Setup'].forEach((v) {
        setup.add(new Setup.fromJson(v));
      });
    }
    if (json['companydetail'] != null) {
      companydetail = new List<Companydetail>();
      json['companydetail'].forEach((v) {
        companydetail.add(new Companydetail.fromJson(v));
      });
    }
    if (json['SalesmanMaster'] != null) {
      salesmanMaster = new List<SalesmanMaster>();
      json['SalesmanMaster'].forEach((v) {
        salesmanMaster.add(new SalesmanMaster.fromJson(v));
      });
    }
    if (json['RouteMaster'] != null) {
      routeMaster = new List<RouteMaster>();
      json['RouteMaster'].forEach((v) {
        routeMaster.add(new RouteMaster.fromJson(v));
      });
    }
    if (json['synctime'] != null) {
      synctime = new List<Synctime>();
      json['synctime'].forEach((v) {
        synctime.add(new Synctime.fromJson(v));
      });
    }
    if (json['CurrencyMaster'] != null) {
      currencyMaster = new List<CurrencyMaster>();
      json['CurrencyMaster'].forEach((v) {
        currencyMaster.add(new CurrencyMaster.fromJson(v));
      });
    }
    if (json['itemmustheader'] != null) {
      itemmustheader = new List<Itemmustheader>();
      json['itemmustheader'].forEach((v) {
        itemmustheader.add(new Itemmustheader.fromJson(v));
      });
    }
    if (json['itemmustdetail'] != null) {
      itemmustdetail = new List<Itemmustdetail>();
      json['itemmustdetail'].forEach((v) {
        itemmustdetail.add(new Itemmustdetail.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.controlPanel != null) {
      data['ControlPanel'] = this.controlPanel.map((v) => v.toJson()).toList();
    }
    if (this.setup != null) {
      data['Setup'] = this.setup.map((v) => v.toJson()).toList();
    }
    if (this.companydetail != null) {
      data['companydetail'] =
          this.companydetail.map((v) => v.toJson()).toList();
    }
    if (this.salesmanMaster != null) {
      data['SalesmanMaster'] =
          this.salesmanMaster.map((v) => v.toJson()).toList();
    }
    if (this.routeMaster != null) {
      data['RouteMaster'] = this.routeMaster.map((v) => v.toJson()).toList();
    }
    if (this.synctime != null) {
      data['synctime'] = this.synctime.map((v) => v.toJson()).toList();
    }
    if (this.currencyMaster != null) {
      data['CurrencyMaster'] =
          this.currencyMaster.map((v) => v.toJson()).toList();
    }
    if (this.itemmustheader != null) {
      data['itemmustheader'] =
          this.itemmustheader.map((v) => v.toJson()).toList();
    }
    if (this.itemmustdetail != null) {
      data['itemmustdetail'] =
          this.itemmustdetail.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ControlPanel {
  String flagid;
  String formid;
  String flagname;
  String status;
  String flagvalue;

  ControlPanel(
      {this.flagid, this.formid, this.flagname, this.status, this.flagvalue});

  ControlPanel.fromJson(Map<String, dynamic> json) {
    flagid = json['flagid'];
    formid = json['formid'];
    flagname = json['flagname'];
    status = json['status'];
    flagvalue = json['flagvalue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flagid'] = this.flagid;
    data['formid'] = this.formid;
    data['flagname'] = this.flagname;
    data['status'] = this.status;
    data['flagvalue'] = this.flagvalue;
    return data;
  }
}

class Setup {
  String setupid;
  String cutofdate;
  String currencycode;
  String currencysymbol;
  String arbcurrencysymbol;
  String conversionrate;
  String decimalplaces;
  String previousdayuploadflag;
  String salesentryflag;
  String returnentryflag;
  String buybackentryflag;
  String freegoodentryflag;
  String buybackfreeentryflag;
  String replacemententryflag;
  String rententryflag;
  String importfilespath;
  String downloadfilespath;
  String exportfilespath;
  String backupfilespath;
  String uploadfilespath;
  String databasebackuppath;
  String dailystdpricelistflag;
  String allowcontrolonpreparefilesflag;
  String allownormalgccollectionhhcflag;
  String creditcontrolflag;
  String allowpreparefilesafterupload;
  String alloweditinvoicesequence;
  String erpimportfilespath;
  String erpexportfilespath;
  String erpbackupfilespath;
  String dataconimportfilespath;
  String dataconexportfilespath;
  String dataconbackupfilespath;
  String isheadofficeflag;
  String reopendayondepotflag;
  String reopendayonrouteflag;
  String datatransfereddate;
  String dataconserverfilespath;
  String allowtoopenfuturedayflag;
  String transferinventoryflag;
  String journeyplanflag;
  String enableloadrequesttoloadout;
  String downloadcompanyheaderflag;
  String defaultsonpreparefilesflag;
  String resenddatatoerpallowed;
  String allowcashinvoiceoncreditcust;
  String callrestrictiondaysflag;
  String routesequenceplanflag;
  String dataconfileformat;
  String weekstartday;
  String allowmorethanonesalesman;
  String offtakeparameter;
  String importfilepath;
  String downloadoutletitemcodes;
  String importprocess6920;
  String versionid;
  String docprefix;
  String invprefix;
  String cashinvprefix;
  String orderprefix;
  String arprefix;
  String cashinvoiceseq;
  String salesorderseq;
  String arseq;
  String cashinvoiceseqfullpay;
  String nooforderdays;
  String returninvoiceseq;
  String cashinvoiceseqfullpaygc;
  String returninvprefix;
  String creditinvoiceseq;
  String restrictpreparefile;
  String defaultdepot;
  String costpricepercentage;
  String multidaypostingdate;
  String modifieddate;
  String synctimeinterval;
  String tabletsyncmode;

  Setup(
      {this.setupid,
      this.cutofdate,
      this.currencycode,
      this.currencysymbol,
      this.arbcurrencysymbol,
      this.conversionrate,
      this.decimalplaces,
      this.previousdayuploadflag,
      this.salesentryflag,
      this.returnentryflag,
      this.buybackentryflag,
      this.freegoodentryflag,
      this.buybackfreeentryflag,
      this.replacemententryflag,
      this.rententryflag,
      this.importfilespath,
      this.downloadfilespath,
      this.exportfilespath,
      this.backupfilespath,
      this.uploadfilespath,
      this.databasebackuppath,
      this.dailystdpricelistflag,
      this.allowcontrolonpreparefilesflag,
      this.allownormalgccollectionhhcflag,
      this.creditcontrolflag,
      this.allowpreparefilesafterupload,
      this.alloweditinvoicesequence,
      this.erpimportfilespath,
      this.erpexportfilespath,
      this.erpbackupfilespath,
      this.dataconimportfilespath,
      this.dataconexportfilespath,
      this.dataconbackupfilespath,
      this.isheadofficeflag,
      this.reopendayondepotflag,
      this.reopendayonrouteflag,
      this.datatransfereddate,
      this.dataconserverfilespath,
      this.allowtoopenfuturedayflag,
      this.transferinventoryflag,
      this.journeyplanflag,
      this.enableloadrequesttoloadout,
      this.downloadcompanyheaderflag,
      this.defaultsonpreparefilesflag,
      this.resenddatatoerpallowed,
      this.allowcashinvoiceoncreditcust,
      this.callrestrictiondaysflag,
      this.routesequenceplanflag,
      this.dataconfileformat,
      this.weekstartday,
      this.allowmorethanonesalesman,
      this.offtakeparameter,
      this.importfilepath,
      this.downloadoutletitemcodes,
      this.importprocess6920,
      this.versionid,
      this.docprefix,
      this.invprefix,
      this.cashinvprefix,
      this.orderprefix,
      this.arprefix,
      this.cashinvoiceseq,
      this.salesorderseq,
      this.arseq,
      this.cashinvoiceseqfullpay,
      this.nooforderdays,
      this.returninvoiceseq,
      this.cashinvoiceseqfullpaygc,
      this.returninvprefix,
      this.creditinvoiceseq,
      this.restrictpreparefile,
      this.defaultdepot,
      this.costpricepercentage,
      this.multidaypostingdate,
      this.modifieddate,
      this.synctimeinterval,
      this.tabletsyncmode});

  Setup.fromJson(Map<String, dynamic> json) {
    setupid = json['setupid'];
    cutofdate = json['cutofdate'];
    currencycode = json['currencycode'];
    currencysymbol = json['currencysymbol'];
    arbcurrencysymbol = json['arbcurrencysymbol'];
    conversionrate = json['conversionrate'];
    decimalplaces = json['decimalplaces'];
    previousdayuploadflag = json['previousdayuploadflag'];
    salesentryflag = json['salesentryflag'];
    returnentryflag = json['returnentryflag'];
    buybackentryflag = json['buybackentryflag'];
    freegoodentryflag = json['freegoodentryflag'];
    buybackfreeentryflag = json['buybackfreeentryflag'];
    replacemententryflag = json['replacemententryflag'];
    rententryflag = json['rententryflag'];
    importfilespath = json['importfilespath'];
    downloadfilespath = json['downloadfilespath'];
    exportfilespath = json['exportfilespath'];
    backupfilespath = json['backupfilespath'];
    uploadfilespath = json['uploadfilespath'];
    databasebackuppath = json['databasebackuppath'];
    dailystdpricelistflag = json['dailystdpricelistflag'];
    allowcontrolonpreparefilesflag = json['allowcontrolonpreparefilesflag'];
    allownormalgccollectionhhcflag = json['allownormalgccollectionhhcflag'];
    creditcontrolflag = json['creditcontrolflag'];
    allowpreparefilesafterupload = json['allowpreparefilesafterupload'];
    alloweditinvoicesequence = json['alloweditinvoicesequence'];
    erpimportfilespath = json['erpimportfilespath'];
    erpexportfilespath = json['erpexportfilespath'];
    erpbackupfilespath = json['erpbackupfilespath'];
    dataconimportfilespath = json['dataconimportfilespath'];
    dataconexportfilespath = json['dataconexportfilespath'];
    dataconbackupfilespath = json['dataconbackupfilespath'];
    isheadofficeflag = json['isheadofficeflag'];
    reopendayondepotflag = json['reopendayondepotflag'];
    reopendayonrouteflag = json['reopendayonrouteflag'];
    datatransfereddate = json['datatransfereddate'];
    dataconserverfilespath = json['dataconserverfilespath'];
    allowtoopenfuturedayflag = json['allowtoopenfuturedayflag'];
    transferinventoryflag = json['transferinventoryflag'];
    journeyplanflag = json['journeyplanflag'];
    enableloadrequesttoloadout = json['enableloadrequesttoloadout'];
    downloadcompanyheaderflag = json['downloadcompanyheaderflag'];
    defaultsonpreparefilesflag = json['defaultsonpreparefilesflag'];
    resenddatatoerpallowed = json['resenddatatoerpallowed'];
    allowcashinvoiceoncreditcust = json['allowcashinvoiceoncreditcust'];
    callrestrictiondaysflag = json['callrestrictiondaysflag'];
    routesequenceplanflag = json['routesequenceplanflag'];
    dataconfileformat = json['dataconfileformat'];
    weekstartday = json['weekstartday'];
    allowmorethanonesalesman = json['allowmorethanonesalesman'];
    offtakeparameter = json['offtakeparameter'];
    importfilepath = json['importfilepath'];
    downloadoutletitemcodes = json['downloadoutletitemcodes'];
    importprocess6920 = json['importprocess6920'];
    versionid = json['versionid'];
    docprefix = json['docprefix'];
    invprefix = json['invprefix'];
    cashinvprefix = json['cashinvprefix'];
    orderprefix = json['orderprefix'];
    arprefix = json['arprefix'];
    cashinvoiceseq = json['cashinvoiceseq'];
    salesorderseq = json['salesorderseq'];
    arseq = json['arseq'];
    cashinvoiceseqfullpay = json['cashinvoiceseqfullpay'];
    nooforderdays = json['nooforderdays'];
    returninvoiceseq = json['returninvoiceseq'];
    cashinvoiceseqfullpaygc = json['cashinvoiceseqfullpaygc'];
    returninvprefix = json['returninvprefix'];
    creditinvoiceseq = json['creditinvoiceseq'];
    restrictpreparefile = json['restrictpreparefile'];
    defaultdepot = json['defaultdepot'];
    costpricepercentage = json['costpricepercentage'];
    multidaypostingdate = json['multidaypostingdate'];
    modifieddate = json['modifieddate'];
    synctimeinterval = json['synctimeinterval'];
    tabletsyncmode = json['tabletsyncmode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['setupid'] = this.setupid;
    data['cutofdate'] = this.cutofdate;
    data['currencycode'] = this.currencycode;
    data['currencysymbol'] = this.currencysymbol;
    data['arbcurrencysymbol'] = this.arbcurrencysymbol;
    data['conversionrate'] = this.conversionrate;
    data['decimalplaces'] = this.decimalplaces;
    data['previousdayuploadflag'] = this.previousdayuploadflag;
    data['salesentryflag'] = this.salesentryflag;
    data['returnentryflag'] = this.returnentryflag;
    data['buybackentryflag'] = this.buybackentryflag;
    data['freegoodentryflag'] = this.freegoodentryflag;
    data['buybackfreeentryflag'] = this.buybackfreeentryflag;
    data['replacemententryflag'] = this.replacemententryflag;
    data['rententryflag'] = this.rententryflag;
    data['importfilespath'] = this.importfilespath;
    data['downloadfilespath'] = this.downloadfilespath;
    data['exportfilespath'] = this.exportfilespath;
    data['backupfilespath'] = this.backupfilespath;
    data['uploadfilespath'] = this.uploadfilespath;
    data['databasebackuppath'] = this.databasebackuppath;
    data['dailystdpricelistflag'] = this.dailystdpricelistflag;
    data['allowcontrolonpreparefilesflag'] =
        this.allowcontrolonpreparefilesflag;
    data['allownormalgccollectionhhcflag'] =
        this.allownormalgccollectionhhcflag;
    data['creditcontrolflag'] = this.creditcontrolflag;
    data['allowpreparefilesafterupload'] = this.allowpreparefilesafterupload;
    data['alloweditinvoicesequence'] = this.alloweditinvoicesequence;
    data['erpimportfilespath'] = this.erpimportfilespath;
    data['erpexportfilespath'] = this.erpexportfilespath;
    data['erpbackupfilespath'] = this.erpbackupfilespath;
    data['dataconimportfilespath'] = this.dataconimportfilespath;
    data['dataconexportfilespath'] = this.dataconexportfilespath;
    data['dataconbackupfilespath'] = this.dataconbackupfilespath;
    data['isheadofficeflag'] = this.isheadofficeflag;
    data['reopendayondepotflag'] = this.reopendayondepotflag;
    data['reopendayonrouteflag'] = this.reopendayonrouteflag;
    data['datatransfereddate'] = this.datatransfereddate;
    data['dataconserverfilespath'] = this.dataconserverfilespath;
    data['allowtoopenfuturedayflag'] = this.allowtoopenfuturedayflag;
    data['transferinventoryflag'] = this.transferinventoryflag;
    data['journeyplanflag'] = this.journeyplanflag;
    data['enableloadrequesttoloadout'] = this.enableloadrequesttoloadout;
    data['downloadcompanyheaderflag'] = this.downloadcompanyheaderflag;
    data['defaultsonpreparefilesflag'] = this.defaultsonpreparefilesflag;
    data['resenddatatoerpallowed'] = this.resenddatatoerpallowed;
    data['allowcashinvoiceoncreditcust'] = this.allowcashinvoiceoncreditcust;
    data['callrestrictiondaysflag'] = this.callrestrictiondaysflag;
    data['routesequenceplanflag'] = this.routesequenceplanflag;
    data['dataconfileformat'] = this.dataconfileformat;
    data['weekstartday'] = this.weekstartday;
    data['allowmorethanonesalesman'] = this.allowmorethanonesalesman;
    data['offtakeparameter'] = this.offtakeparameter;
    data['importfilepath'] = this.importfilepath;
    data['downloadoutletitemcodes'] = this.downloadoutletitemcodes;
    data['importprocess6920'] = this.importprocess6920;
    data['versionid'] = this.versionid;
    data['docprefix'] = this.docprefix;
    data['invprefix'] = this.invprefix;
    data['cashinvprefix'] = this.cashinvprefix;
    data['orderprefix'] = this.orderprefix;
    data['arprefix'] = this.arprefix;
    data['cashinvoiceseq'] = this.cashinvoiceseq;
    data['salesorderseq'] = this.salesorderseq;
    data['arseq'] = this.arseq;
    data['cashinvoiceseqfullpay'] = this.cashinvoiceseqfullpay;
    data['nooforderdays'] = this.nooforderdays;
    data['returninvoiceseq'] = this.returninvoiceseq;
    data['cashinvoiceseqfullpaygc'] = this.cashinvoiceseqfullpaygc;
    data['returninvprefix'] = this.returninvprefix;
    data['creditinvoiceseq'] = this.creditinvoiceseq;
    data['restrictpreparefile'] = this.restrictpreparefile;
    data['defaultdepot'] = this.defaultdepot;
    data['costpricepercentage'] = this.costpricepercentage;
    data['multidaypostingdate'] = this.multidaypostingdate;
    data['modifieddate'] = this.modifieddate;
    data['synctimeinterval'] = this.synctimeinterval;
    data['tabletsyncmode'] = this.tabletsyncmode;
    return data;
  }
}

class Companydetail {
  String cmpycode;
  String name;
  String address;
  String telephone;
  String fax;
  String nationalsalesmanagercode;
  String contactname;
  String city;
  String country;
  String arbcompanyname;
  String alternatecmpycode;
  String created;
  String cdat;
  String modified;
  String mdat;
  String zipcode;
  String countrycode;
  String countryname;
  String arbcountryname;
  String taxregistrationnumber;
  String distributorcode;
  String activestatus;
  String parentcompany;
  String distributorcode1;
  String latitude;
  String longitude;

  Companydetail(
      {this.cmpycode,
      this.name,
      this.address,
      this.telephone,
      this.fax,
      this.nationalsalesmanagercode,
      this.contactname,
      this.city,
      this.country,
      this.arbcompanyname,
      this.alternatecmpycode,
      this.created,
      this.cdat,
      this.modified,
      this.mdat,
      this.zipcode,
      this.countrycode,
      this.countryname,
      this.arbcountryname,
      this.taxregistrationnumber,
      this.distributorcode,
      this.activestatus,
      this.parentcompany,
      this.distributorcode1,
      this.latitude,
      this.longitude});

  Companydetail.fromJson(Map<String, dynamic> json) {
    cmpycode = json['cmpycode'];
    name = json['name'];
    address = json['address'];
    telephone = json['telephone'];
    fax = json['fax'];
    nationalsalesmanagercode = json['nationalsalesmanagercode'];
    contactname = json['contactname'];
    city = json['city'];
    country = json['country'];
    arbcompanyname = json['arbcompanyname'];
    alternatecmpycode = json['alternatecmpycode'];
    created = json['created'];
    cdat = json['cdat'];
    modified = json['modified'];
    mdat = json['mdat'];
    zipcode = json['zipcode'];
    countrycode = json['countrycode'];
    countryname = json['countryname'];
    arbcountryname = json['arbcountryname'];
    taxregistrationnumber = json['taxregistrationnumber'];
    distributorcode = json['distributorcode'];
    activestatus = json['activestatus'];
    parentcompany = json['parentcompany'];
    distributorcode1 = json['distributorcode1'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cmpycode'] = this.cmpycode;
    data['name'] = this.name;
    data['address'] = this.address;
    data['telephone'] = this.telephone;
    data['fax'] = this.fax;
    data['nationalsalesmanagercode'] = this.nationalsalesmanagercode;
    data['contactname'] = this.contactname;
    data['city'] = this.city;
    data['country'] = this.country;
    data['arbcompanyname'] = this.arbcompanyname;
    data['alternatecmpycode'] = this.alternatecmpycode;
    data['created'] = this.created;
    data['cdat'] = this.cdat;
    data['modified'] = this.modified;
    data['mdat'] = this.mdat;
    data['zipcode'] = this.zipcode;
    data['countrycode'] = this.countrycode;
    data['countryname'] = this.countryname;
    data['arbcountryname'] = this.arbcountryname;
    data['taxregistrationnumber'] = this.taxregistrationnumber;
    data['distributorcode'] = this.distributorcode;
    data['activestatus'] = this.activestatus;
    data['parentcompany'] = this.parentcompany;
    data['distributorcode1'] = this.distributorcode1;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}

class SalesmanMaster {
  String salesmancode;
  String salesmanname1;
  String salesmanname2;
  String arbsalesmanname1;
  String messagekey;
  String pricingkey;
  String memo1;
  String memo2;
  String alternatesalesmancode;
  String type;
  String activestatus;
  String parentcompany;
  String ansalesmancode;
  String username;
  String userpassword;

  SalesmanMaster(
      {this.salesmancode,
      this.salesmanname1,
      this.salesmanname2,
      this.arbsalesmanname1,
      this.messagekey,
      this.pricingkey,
      this.memo1,
      this.memo2,
      this.alternatesalesmancode,
      this.type,
      this.activestatus,
      this.parentcompany,
      this.ansalesmancode,
      this.username,
      this.userpassword});

  SalesmanMaster.fromJson(Map<String, dynamic> json) {
    salesmancode = json['salesmancode'];
    salesmanname1 = json['salesmanname1'];
    salesmanname2 = json['salesmanname2'];
    arbsalesmanname1 = json['arbsalesmanname1'];
    messagekey = json['messagekey'];
    pricingkey = json['pricingkey'];
    memo1 = json['memo1'];
    memo2 = json['memo2'];
    alternatesalesmancode = json['alternatesalesmancode'];
    type = json['type'];
    activestatus = json['activestatus'];
    parentcompany = json['parentcompany'];
    ansalesmancode = json['ansalesmancode'];
    username = json['username'];
    userpassword = json['userpassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['salesmancode'] = this.salesmancode;
    data['salesmanname1'] = this.salesmanname1;
    data['salesmanname2'] = this.salesmanname2;
    data['arbsalesmanname1'] = this.arbsalesmanname1;
    data['messagekey'] = this.messagekey;
    data['pricingkey'] = this.pricingkey;
    data['memo1'] = this.memo1;
    data['memo2'] = this.memo2;
    data['alternatesalesmancode'] = this.alternatesalesmancode;
    data['type'] = this.type;
    data['activestatus'] = this.activestatus;
    data['parentcompany'] = this.parentcompany;
    data['ansalesmancode'] = this.ansalesmancode;
    data['username'] = this.username;
    data['userpassword'] = this.userpassword;
    return data;
  }
}

class RouteMaster {
  String routecode;
  String routename;
  String arbroutename;
  String subareacode;
  String salesmancode;
  String memo1;
  String memo2;
  String hhcordseq;
  String hhcinvseq;
  String hhccshseq;
  String hhcivtseq;
  String bodocseq;
  String boinvseq;
  String vehiclenumber;
  String vehicleodometer;
  String enablescanneruse;
  String password1;
  String password2;
  String password3;
  String password4;
  String password5;
  String passwordarray01;
  String passwordarray02;
  String passwordarray03;
  String passwordarray04;
  String passwordarray05;
  String passwordarray06;
  String passwordarray07;
  String passwordarray08;
  String passwordarray09;
  String passwordarray10;
  String passwordarray11;
  String passwordarray12;
  String passwordarray13;
  String passwordarray14;
  String passwordarray15;
  String passwordarray16;
  String enabledelayprint;
  String promptodominput;
  String enableeodexpenses;
  String enableeodadjchecks;
  String enableeodaddchecks;
  String reqeoddepositreport;
  String reqeodsalesreport;
  String reqeodrteactivreport;
  String reqeodrtestlmtreport;
  String reqeodroutereviewrpt;
  String reqeodrtnexchreport;
  String reqeodplacementsrpt;
  String reqeodprcchgreport;
  String reqeodpromosreport;
  String reqeodnosalereport;
  String reqeodnondelreport;
  String reqeodexceptionrpt;
  String reqeodunauthbalance;
  String reqeodroasummary;
  String inventorycaseinput;
  String loadreqreportformat;
  String includeloadrequest;
  String loadoutadjustments;
  String autocalculateloadin;
  String requireloadin;
  String loadsheetreport;
  String inventoryvariance;
  String invenoversell;
  String enablenosale;
  String enablepostvoid;
  String cashbalance;
  String amountdecimaldigits;
  String unloadoversellmessage;
  String displayinvsummary;
  String alternateroutecode;
  String enabledamagedtrxn;
  String defaultdeliverydays;
  String reqeodnonscannedreport;
  String reqeododomlogreport;
  String inventoryvalueprint;
  String loadaccessafterunload;
  String creditlimit;
  String routebalance;
  String depotrouteflag;
  String routeinventoryvariance;
  String allowpopulateload;
  String enableaddcustomer;
  String allowgctocash;
  String usesalesdateflag;
  String enablestartdaydatetimeedit;
  String newcustomerseqnumber;
  String enableloadtransfer;
  String loadreqmethod;
  String loadreqrolluporders;
  String routeprinter;
  String depotprinter;
  String routetype;
  String enablescancustomer;
  String enforcecallsequence;
  String enablefoclimit;
  String enablemiddaytelecom;
  String printdocumentnumber;
  String activestatus;
  String enablecashonlydiscount;
  String eodreportcontrol;
  String pdcthreshold;
  String itemcodedisplay;
  String routeitemgrpcode;
  String itemdescriptiondisplay;
  String lastcustomersequence;
  String loadsecurityflag;
  String usealternatecodes;
  String enabledraftcopy;
  String boarseq;
  String boordseq;
  String hhcarseq;
  String hhcloadseq;
  String boloadseq;
  String deliveryroute;
  String presalesorder;
  String usesequenceflag;
  String customerseq;
  String routeseqno;
  String allowbalcheck;
  String expirylimit;
  String runningvalue;
  String transactionnoseq;
  String enablefreereason;
  String maximumgpsallowed;
  String defaultrequestdays;
  String defaultweeksetting;
  String voidoverride;
  String salesmantargetdays;
  String hhcinvretseq;
  String hhcinvswapseq;
  String enableautopostingaccount;
  String variancecustomercode;
  String forcesettlementdays;
  String routecreditcheck;
  String routecreditlimit;
  String routecreditlimitdays;
  String itemmustkey;
  String inventoryreportcontrol;
  String enablestockicon;
  String enablegps;
  String updategps;
  String enforcegps;
  String allowedradius;
  String deviceid;
  String printbarcode;
  String printitemcode;
  String routecatcode;
  String enablestartdayrtewkdayedit;
  String cdcvaliditydays;
  String creditcheckpresales;
  String enableotpforfoc;
  String enablemerchandizing;
  String enablepriceedit;
  String validateloadtransfer;
  String reprintwithotp;
  String division;
  String autofillunload;
  String enablenavigation;
  String enabledeliveryreason;
  String allowdeliveryedit;
  String autoloadprocess;
  String deliveryeditotp;

  RouteMaster(
      {this.routecode,
      this.routename,
      this.arbroutename,
      this.subareacode,
      this.salesmancode,
      this.memo1,
      this.memo2,
      this.hhcordseq,
      this.hhcinvseq,
      this.hhccshseq,
      this.hhcivtseq,
      this.bodocseq,
      this.boinvseq,
      this.vehiclenumber,
      this.vehicleodometer,
      this.enablescanneruse,
      this.password1,
      this.password2,
      this.password3,
      this.password4,
      this.password5,
      this.passwordarray01,
      this.passwordarray02,
      this.passwordarray03,
      this.passwordarray04,
      this.passwordarray05,
      this.passwordarray06,
      this.passwordarray07,
      this.passwordarray08,
      this.passwordarray09,
      this.passwordarray10,
      this.passwordarray11,
      this.passwordarray12,
      this.passwordarray13,
      this.passwordarray14,
      this.passwordarray15,
      this.passwordarray16,
      this.enabledelayprint,
      this.promptodominput,
      this.enableeodexpenses,
      this.enableeodadjchecks,
      this.enableeodaddchecks,
      this.reqeoddepositreport,
      this.reqeodsalesreport,
      this.reqeodrteactivreport,
      this.reqeodrtestlmtreport,
      this.reqeodroutereviewrpt,
      this.reqeodrtnexchreport,
      this.reqeodplacementsrpt,
      this.reqeodprcchgreport,
      this.reqeodpromosreport,
      this.reqeodnosalereport,
      this.reqeodnondelreport,
      this.reqeodexceptionrpt,
      this.reqeodunauthbalance,
      this.reqeodroasummary,
      this.inventorycaseinput,
      this.loadreqreportformat,
      this.includeloadrequest,
      this.loadoutadjustments,
      this.autocalculateloadin,
      this.requireloadin,
      this.loadsheetreport,
      this.inventoryvariance,
      this.invenoversell,
      this.enablenosale,
      this.enablepostvoid,
      this.cashbalance,
      this.amountdecimaldigits,
      this.unloadoversellmessage,
      this.displayinvsummary,
      this.alternateroutecode,
      this.enabledamagedtrxn,
      this.defaultdeliverydays,
      this.reqeodnonscannedreport,
      this.reqeododomlogreport,
      this.inventoryvalueprint,
      this.loadaccessafterunload,
      this.creditlimit,
      this.routebalance,
      this.depotrouteflag,
      this.routeinventoryvariance,
      this.allowpopulateload,
      this.enableaddcustomer,
      this.allowgctocash,
      this.usesalesdateflag,
      this.enablestartdaydatetimeedit,
      this.newcustomerseqnumber,
      this.enableloadtransfer,
      this.loadreqmethod,
      this.loadreqrolluporders,
      this.routeprinter,
      this.depotprinter,
      this.routetype,
      this.enablescancustomer,
      this.enforcecallsequence,
      this.enablefoclimit,
      this.enablemiddaytelecom,
      this.printdocumentnumber,
      this.activestatus,
      this.enablecashonlydiscount,
      this.eodreportcontrol,
      this.pdcthreshold,
      this.itemcodedisplay,
      this.routeitemgrpcode,
      this.itemdescriptiondisplay,
      this.lastcustomersequence,
      this.loadsecurityflag,
      this.usealternatecodes,
      this.enabledraftcopy,
      this.boarseq,
      this.boordseq,
      this.hhcarseq,
      this.hhcloadseq,
      this.boloadseq,
      this.deliveryroute,
      this.presalesorder,
      this.usesequenceflag,
      this.customerseq,
      this.routeseqno,
      this.allowbalcheck,
      this.expirylimit,
      this.runningvalue,
      this.transactionnoseq,
      this.enablefreereason,
      this.maximumgpsallowed,
      this.defaultrequestdays,
      this.defaultweeksetting,
      this.voidoverride,
      this.salesmantargetdays,
      this.hhcinvretseq,
      this.hhcinvswapseq,
      this.enableautopostingaccount,
      this.variancecustomercode,
      this.forcesettlementdays,
      this.routecreditcheck,
      this.routecreditlimit,
      this.routecreditlimitdays,
      this.itemmustkey,
      this.inventoryreportcontrol,
      this.enablestockicon,
      this.enablegps,
      this.updategps,
      this.enforcegps,
      this.allowedradius,
      this.deviceid,
      this.printbarcode,
      this.printitemcode,
      this.routecatcode,
      this.enablestartdayrtewkdayedit,
      this.cdcvaliditydays,
      this.creditcheckpresales,
      this.enableotpforfoc,
      this.enablemerchandizing,
      this.enablepriceedit,
      this.validateloadtransfer,
      this.reprintwithotp,
      this.division,
      this.autofillunload,
      this.enablenavigation,
      this.enabledeliveryreason,
      this.allowdeliveryedit,
      this.autoloadprocess,
      this.deliveryeditotp});

  RouteMaster.fromJson(Map<String, dynamic> json) {
    routecode = json['routecode'];
    routename = json['routename'];
    arbroutename = json['arbroutename'];
    subareacode = json['subareacode'];
    salesmancode = json['salesmancode'];
    memo1 = json['memo1'];
    memo2 = json['memo2'];
    hhcordseq = json['hhcordseq'];
    hhcinvseq = json['hhcinvseq'];
    hhccshseq = json['hhccshseq'];
    hhcivtseq = json['hhcivtseq'];
    bodocseq = json['bodocseq'];
    boinvseq = json['boinvseq'];
    vehiclenumber = json['vehiclenumber'];
    vehicleodometer = json['vehicleodometer'];
    enablescanneruse = json['enablescanneruse'];
    password1 = json['password1'];
    password2 = json['password2'];
    password3 = json['password3'];
    password4 = json['password4'];
    password5 = json['password5'];
    passwordarray01 = json['passwordarray01'];
    passwordarray02 = json['passwordarray02'];
    passwordarray03 = json['passwordarray03'];
    passwordarray04 = json['passwordarray04'];
    passwordarray05 = json['passwordarray05'];
    passwordarray06 = json['passwordarray06'];
    passwordarray07 = json['passwordarray07'];
    passwordarray08 = json['passwordarray08'];
    passwordarray09 = json['passwordarray09'];
    passwordarray10 = json['passwordarray10'];
    passwordarray11 = json['passwordarray11'];
    passwordarray12 = json['passwordarray12'];
    passwordarray13 = json['passwordarray13'];
    passwordarray14 = json['passwordarray14'];
    passwordarray15 = json['passwordarray15'];
    passwordarray16 = json['passwordarray16'];
    enabledelayprint = json['enabledelayprint'];
    promptodominput = json['promptodominput'];
    enableeodexpenses = json['enableeodexpenses'];
    enableeodadjchecks = json['enableeodadjchecks'];
    enableeodaddchecks = json['enableeodaddchecks'];
    reqeoddepositreport = json['reqeoddepositreport'];
    reqeodsalesreport = json['reqeodsalesreport'];
    reqeodrteactivreport = json['reqeodrteactivreport'];
    reqeodrtestlmtreport = json['reqeodrtestlmtreport'];
    reqeodroutereviewrpt = json['reqeodroutereviewrpt'];
    reqeodrtnexchreport = json['reqeodrtnexchreport'];
    reqeodplacementsrpt = json['reqeodplacementsrpt'];
    reqeodprcchgreport = json['reqeodprcchgreport'];
    reqeodpromosreport = json['reqeodpromosreport'];
    reqeodnosalereport = json['reqeodnosalereport'];
    reqeodnondelreport = json['reqeodnondelreport'];
    reqeodexceptionrpt = json['reqeodexceptionrpt'];
    reqeodunauthbalance = json['reqeodunauthbalance'];
    reqeodroasummary = json['reqeodroasummary'];
    inventorycaseinput = json['inventorycaseinput'];
    loadreqreportformat = json['loadreqreportformat'];
    includeloadrequest = json['includeloadrequest'];
    loadoutadjustments = json['loadoutadjustments'];
    autocalculateloadin = json['autocalculateloadin'];
    requireloadin = json['requireloadin'];
    loadsheetreport = json['loadsheetreport'];
    inventoryvariance = json['inventoryvariance'];
    invenoversell = json['invenoversell'];
    enablenosale = json['enablenosale'];
    enablepostvoid = json['enablepostvoid'];
    cashbalance = json['cashbalance'];
    amountdecimaldigits = json['amountdecimaldigits'];
    unloadoversellmessage = json['unloadoversellmessage'];
    displayinvsummary = json['displayinvsummary'];
    alternateroutecode = json['alternateroutecode'];
    enabledamagedtrxn = json['enabledamagedtrxn'];
    defaultdeliverydays = json['defaultdeliverydays'];
    reqeodnonscannedreport = json['reqeodnonscannedreport'];
    reqeododomlogreport = json['reqeododomlogreport'];
    inventoryvalueprint = json['inventoryvalueprint'];
    loadaccessafterunload = json['loadaccessafterunload'];
    creditlimit = json['creditlimit'];
    routebalance = json['routebalance'];
    depotrouteflag = json['depotrouteflag'];
    routeinventoryvariance = json['routeinventoryvariance'];
    allowpopulateload = json['allowpopulateload'];
    enableaddcustomer = json['enableaddcustomer'];
    allowgctocash = json['allowgctocash'];
    usesalesdateflag = json['usesalesdateflag'];
    enablestartdaydatetimeedit = json['enablestartdaydatetimeedit'];
    newcustomerseqnumber = json['newcustomerseqnumber'];
    enableloadtransfer = json['enableloadtransfer'];
    loadreqmethod = json['loadreqmethod'];
    loadreqrolluporders = json['loadreqrolluporders'];
    routeprinter = json['routeprinter'];
    depotprinter = json['depotprinter'];
    routetype = json['routetype'];
    enablescancustomer = json['enablescancustomer'];
    enforcecallsequence = json['enforcecallsequence'];
    enablefoclimit = json['enablefoclimit'];
    enablemiddaytelecom = json['enablemiddaytelecom'];
    printdocumentnumber = json['printdocumentnumber'];
    activestatus = json['activestatus'];
    enablecashonlydiscount = json['enablecashonlydiscount'];
    eodreportcontrol = json['eodreportcontrol'];
    pdcthreshold = json['pdcthreshold'];
    itemcodedisplay = json['itemcodedisplay'];
    routeitemgrpcode = json['routeitemgrpcode'];
    itemdescriptiondisplay = json['itemdescriptiondisplay'];
    lastcustomersequence = json['lastcustomersequence'];
    loadsecurityflag = json['loadsecurityflag'];
    usealternatecodes = json['usealternatecodes'];
    enabledraftcopy = json['enabledraftcopy'];
    boarseq = json['boarseq'];
    boordseq = json['boordseq'];
    hhcarseq = json['hhcarseq'];
    hhcloadseq = json['hhcloadseq'];
    boloadseq = json['boloadseq'];
    deliveryroute = json['deliveryroute'];
    presalesorder = json['presalesorder'];
    usesequenceflag = json['usesequenceflag'];
    customerseq = json['customerseq'];
    routeseqno = json['routeseqno'];
    allowbalcheck = json['allowbalcheck'];
    expirylimit = json['expirylimit'];
    runningvalue = json['runningvalue'];
    transactionnoseq = json['transactionnoseq'];
    enablefreereason = json['enablefreereason'];
    maximumgpsallowed = json['maximumgpsallowed'];
    defaultrequestdays = json['defaultrequestdays'];
    defaultweeksetting = json['defaultweeksetting'];
    voidoverride = json['voidoverride'];
    salesmantargetdays = json['salesmantargetdays'];
    hhcinvretseq = json['hhcinvretseq'];
    hhcinvswapseq = json['hhcinvswapseq'];
    enableautopostingaccount = json['enableautopostingaccount'];
    variancecustomercode = json['variancecustomercode'];
    forcesettlementdays = json['forcesettlementdays'];
    routecreditcheck = json['routecreditcheck'];
    routecreditlimit = json['routecreditlimit'];
    routecreditlimitdays = json['routecreditlimitdays'];
    itemmustkey = json['itemmustkey'];
    inventoryreportcontrol = json['inventoryreportcontrol'];
    enablestockicon = json['enablestockicon'];
    enablegps = json['enablegps'];
    updategps = json['updategps'];
    enforcegps = json['enforcegps'];
    allowedradius = json['allowedradius'];
    deviceid = json['deviceid'];
    printbarcode = json['printbarcode'];
    printitemcode = json['printitemcode'];
    routecatcode = json['routecatcode'];
    enablestartdayrtewkdayedit = json['enablestartdayrtewkdayedit'];
    cdcvaliditydays = json['cdcvaliditydays'];
    creditcheckpresales = json['creditcheckpresales'];
    enableotpforfoc = json['enableotpforfoc'];
    enablemerchandizing = json['enablemerchandizing'];
    enablepriceedit = json['enablepriceedit'];
    validateloadtransfer = json['validateloadtransfer'];
    reprintwithotp = json['reprintwithotp'];
    division = json['division'];
    autofillunload = json['autofillunload'];
    enablenavigation = json['enablenavigation'];
    enabledeliveryreason = json['enabledeliveryreason'];
    allowdeliveryedit = json['allowdeliveryedit'];
    autoloadprocess = json['autoloadprocess'];
    deliveryeditotp = json['deliveryeditotp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['routecode'] = this.routecode;
    data['routename'] = this.routename;
    data['arbroutename'] = this.arbroutename;
    data['subareacode'] = this.subareacode;
    data['salesmancode'] = this.salesmancode;
    data['memo1'] = this.memo1;
    data['memo2'] = this.memo2;
    data['hhcordseq'] = this.hhcordseq;
    data['hhcinvseq'] = this.hhcinvseq;
    data['hhccshseq'] = this.hhccshseq;
    data['hhcivtseq'] = this.hhcivtseq;
    data['bodocseq'] = this.bodocseq;
    data['boinvseq'] = this.boinvseq;
    data['vehiclenumber'] = this.vehiclenumber;
    data['vehicleodometer'] = this.vehicleodometer;
    data['enablescanneruse'] = this.enablescanneruse;
    data['password1'] = this.password1;
    data['password2'] = this.password2;
    data['password3'] = this.password3;
    data['password4'] = this.password4;
    data['password5'] = this.password5;
    data['passwordarray01'] = this.passwordarray01;
    data['passwordarray02'] = this.passwordarray02;
    data['passwordarray03'] = this.passwordarray03;
    data['passwordarray04'] = this.passwordarray04;
    data['passwordarray05'] = this.passwordarray05;
    data['passwordarray06'] = this.passwordarray06;
    data['passwordarray07'] = this.passwordarray07;
    data['passwordarray08'] = this.passwordarray08;
    data['passwordarray09'] = this.passwordarray09;
    data['passwordarray10'] = this.passwordarray10;
    data['passwordarray11'] = this.passwordarray11;
    data['passwordarray12'] = this.passwordarray12;
    data['passwordarray13'] = this.passwordarray13;
    data['passwordarray14'] = this.passwordarray14;
    data['passwordarray15'] = this.passwordarray15;
    data['passwordarray16'] = this.passwordarray16;
    data['enabledelayprint'] = this.enabledelayprint;
    data['promptodominput'] = this.promptodominput;
    data['enableeodexpenses'] = this.enableeodexpenses;
    data['enableeodadjchecks'] = this.enableeodadjchecks;
    data['enableeodaddchecks'] = this.enableeodaddchecks;
    data['reqeoddepositreport'] = this.reqeoddepositreport;
    data['reqeodsalesreport'] = this.reqeodsalesreport;
    data['reqeodrteactivreport'] = this.reqeodrteactivreport;
    data['reqeodrtestlmtreport'] = this.reqeodrtestlmtreport;
    data['reqeodroutereviewrpt'] = this.reqeodroutereviewrpt;
    data['reqeodrtnexchreport'] = this.reqeodrtnexchreport;
    data['reqeodplacementsrpt'] = this.reqeodplacementsrpt;
    data['reqeodprcchgreport'] = this.reqeodprcchgreport;
    data['reqeodpromosreport'] = this.reqeodpromosreport;
    data['reqeodnosalereport'] = this.reqeodnosalereport;
    data['reqeodnondelreport'] = this.reqeodnondelreport;
    data['reqeodexceptionrpt'] = this.reqeodexceptionrpt;
    data['reqeodunauthbalance'] = this.reqeodunauthbalance;
    data['reqeodroasummary'] = this.reqeodroasummary;
    data['inventorycaseinput'] = this.inventorycaseinput;
    data['loadreqreportformat'] = this.loadreqreportformat;
    data['includeloadrequest'] = this.includeloadrequest;
    data['loadoutadjustments'] = this.loadoutadjustments;
    data['autocalculateloadin'] = this.autocalculateloadin;
    data['requireloadin'] = this.requireloadin;
    data['loadsheetreport'] = this.loadsheetreport;
    data['inventoryvariance'] = this.inventoryvariance;
    data['invenoversell'] = this.invenoversell;
    data['enablenosale'] = this.enablenosale;
    data['enablepostvoid'] = this.enablepostvoid;
    data['cashbalance'] = this.cashbalance;
    data['amountdecimaldigits'] = this.amountdecimaldigits;
    data['unloadoversellmessage'] = this.unloadoversellmessage;
    data['displayinvsummary'] = this.displayinvsummary;
    data['alternateroutecode'] = this.alternateroutecode;
    data['enabledamagedtrxn'] = this.enabledamagedtrxn;
    data['defaultdeliverydays'] = this.defaultdeliverydays;
    data['reqeodnonscannedreport'] = this.reqeodnonscannedreport;
    data['reqeododomlogreport'] = this.reqeododomlogreport;
    data['inventoryvalueprint'] = this.inventoryvalueprint;
    data['loadaccessafterunload'] = this.loadaccessafterunload;
    data['creditlimit'] = this.creditlimit;
    data['routebalance'] = this.routebalance;
    data['depotrouteflag'] = this.depotrouteflag;
    data['routeinventoryvariance'] = this.routeinventoryvariance;
    data['allowpopulateload'] = this.allowpopulateload;
    data['enableaddcustomer'] = this.enableaddcustomer;
    data['allowgctocash'] = this.allowgctocash;
    data['usesalesdateflag'] = this.usesalesdateflag;
    data['enablestartdaydatetimeedit'] = this.enablestartdaydatetimeedit;
    data['newcustomerseqnumber'] = this.newcustomerseqnumber;
    data['enableloadtransfer'] = this.enableloadtransfer;
    data['loadreqmethod'] = this.loadreqmethod;
    data['loadreqrolluporders'] = this.loadreqrolluporders;
    data['routeprinter'] = this.routeprinter;
    data['depotprinter'] = this.depotprinter;
    data['routetype'] = this.routetype;
    data['enablescancustomer'] = this.enablescancustomer;
    data['enforcecallsequence'] = this.enforcecallsequence;
    data['enablefoclimit'] = this.enablefoclimit;
    data['enablemiddaytelecom'] = this.enablemiddaytelecom;
    data['printdocumentnumber'] = this.printdocumentnumber;
    data['activestatus'] = this.activestatus;
    data['enablecashonlydiscount'] = this.enablecashonlydiscount;
    data['eodreportcontrol'] = this.eodreportcontrol;
    data['pdcthreshold'] = this.pdcthreshold;
    data['itemcodedisplay'] = this.itemcodedisplay;
    data['routeitemgrpcode'] = this.routeitemgrpcode;
    data['itemdescriptiondisplay'] = this.itemdescriptiondisplay;
    data['lastcustomersequence'] = this.lastcustomersequence;
    data['loadsecurityflag'] = this.loadsecurityflag;
    data['usealternatecodes'] = this.usealternatecodes;
    data['enabledraftcopy'] = this.enabledraftcopy;
    data['boarseq'] = this.boarseq;
    data['boordseq'] = this.boordseq;
    data['hhcarseq'] = this.hhcarseq;
    data['hhcloadseq'] = this.hhcloadseq;
    data['boloadseq'] = this.boloadseq;
    data['deliveryroute'] = this.deliveryroute;
    data['presalesorder'] = this.presalesorder;
    data['usesequenceflag'] = this.usesequenceflag;
    data['customerseq'] = this.customerseq;
    data['routeseqno'] = this.routeseqno;
    data['allowbalcheck'] = this.allowbalcheck;
    data['expirylimit'] = this.expirylimit;
    data['runningvalue'] = this.runningvalue;
    data['transactionnoseq'] = this.transactionnoseq;
    data['enablefreereason'] = this.enablefreereason;
    data['maximumgpsallowed'] = this.maximumgpsallowed;
    data['defaultrequestdays'] = this.defaultrequestdays;
    data['defaultweeksetting'] = this.defaultweeksetting;
    data['voidoverride'] = this.voidoverride;
    data['salesmantargetdays'] = this.salesmantargetdays;
    data['hhcinvretseq'] = this.hhcinvretseq;
    data['hhcinvswapseq'] = this.hhcinvswapseq;
    data['enableautopostingaccount'] = this.enableautopostingaccount;
    data['variancecustomercode'] = this.variancecustomercode;
    data['forcesettlementdays'] = this.forcesettlementdays;
    data['routecreditcheck'] = this.routecreditcheck;
    data['routecreditlimit'] = this.routecreditlimit;
    data['routecreditlimitdays'] = this.routecreditlimitdays;
    data['itemmustkey'] = this.itemmustkey;
    data['inventoryreportcontrol'] = this.inventoryreportcontrol;
    data['enablestockicon'] = this.enablestockicon;
    data['enablegps'] = this.enablegps;
    data['updategps'] = this.updategps;
    data['enforcegps'] = this.enforcegps;
    data['allowedradius'] = this.allowedradius;
    data['deviceid'] = this.deviceid;
    data['printbarcode'] = this.printbarcode;
    data['printitemcode'] = this.printitemcode;
    data['routecatcode'] = this.routecatcode;
    data['enablestartdayrtewkdayedit'] = this.enablestartdayrtewkdayedit;
    data['cdcvaliditydays'] = this.cdcvaliditydays;
    data['creditcheckpresales'] = this.creditcheckpresales;
    data['enableotpforfoc'] = this.enableotpforfoc;
    data['enablemerchandizing'] = this.enablemerchandizing;
    data['enablepriceedit'] = this.enablepriceedit;
    data['validateloadtransfer'] = this.validateloadtransfer;
    data['reprintwithotp'] = this.reprintwithotp;
    data['division'] = this.division;
    data['autofillunload'] = this.autofillunload;
    data['enablenavigation'] = this.enablenavigation;
    data['enabledeliveryreason'] = this.enabledeliveryreason;
    data['allowdeliveryedit'] = this.allowdeliveryedit;
    data['autoloadprocess'] = this.autoloadprocess;
    data['deliveryeditotp'] = this.deliveryeditotp;
    return data;
  }
}

class Synctime {
  String synctime;

  Synctime({this.synctime});

  Synctime.fromJson(Map<String, dynamic> json) {
    synctime = json['synctime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['synctime'] = this.synctime;
    return data;
  }
}

class CurrencyMaster {
  String currencycode;
  String alternatecode;
  String currencyname;
  String arbcurrencyname;
  String currencysymbol;
  String arbcurrencysymbol;
  String decimalplaces;
  String startdate;
  String enddate;
  String created;
  String cdat;
  String modified;
  String mdat;
  String defaultcurrency;

  CurrencyMaster(
      {this.currencycode,
      this.alternatecode,
      this.currencyname,
      this.arbcurrencyname,
      this.currencysymbol,
      this.arbcurrencysymbol,
      this.decimalplaces,
      this.startdate,
      this.enddate,
      this.created,
      this.cdat,
      this.modified,
      this.mdat,
      this.defaultcurrency});

  CurrencyMaster.fromJson(Map<String, dynamic> json) {
    currencycode = json['currencycode'];
    alternatecode = json['alternatecode'];
    currencyname = json['currencyname'];
    arbcurrencyname = json['arbcurrencyname'];
    currencysymbol = json['currencysymbol'];
    arbcurrencysymbol = json['arbcurrencysymbol'];
    decimalplaces = json['decimalplaces'];
    startdate = json['startdate'];
    enddate = json['enddate'];
    created = json['created'];
    cdat = json['cdat'];
    modified = json['modified'];
    mdat = json['mdat'];
    defaultcurrency = json['defaultcurrency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currencycode'] = this.currencycode;
    data['alternatecode'] = this.alternatecode;
    data['currencyname'] = this.currencyname;
    data['arbcurrencyname'] = this.arbcurrencyname;
    data['currencysymbol'] = this.currencysymbol;
    data['arbcurrencysymbol'] = this.arbcurrencysymbol;
    data['decimalplaces'] = this.decimalplaces;
    data['startdate'] = this.startdate;
    data['enddate'] = this.enddate;
    data['created'] = this.created;
    data['cdat'] = this.cdat;
    data['modified'] = this.modified;
    data['mdat'] = this.mdat;
    data['defaultcurrency'] = this.defaultcurrency;
    return data;
  }
}

class Itemmustheader {
  String itemmustcode;
  String itemmustdescription;

  Itemmustheader({this.itemmustcode, this.itemmustdescription});

  Itemmustheader.fromJson(Map<String, dynamic> json) {
    itemmustcode = json['itemmustcode'];
    itemmustdescription = json['itemmustdescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['itemmustcode'] = this.itemmustcode;
    data['itemmustdescription'] = this.itemmustdescription;
    return data;
  }
}

class Itemmustdetail {
  String primaryKey;
  String itemmustcode;
  String itemcode;
  String minqty;
  String maxqty;
  String mdat;

  Itemmustdetail(
      {this.primaryKey,
      this.itemmustcode,
      this.itemcode,
      this.minqty,
      this.maxqty,
      this.mdat});

  Itemmustdetail.fromJson(Map<String, dynamic> json) {
    primaryKey = json['primary_key'];
    itemmustcode = json['itemmustcode'];
    itemcode = json['itemcode'];
    minqty = json['minqty'];
    maxqty = json['maxqty'];
    mdat = json['mdat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['primary_key'] = this.primaryKey;
    data['itemmustcode'] = this.itemmustcode;
    data['itemcode'] = this.itemcode;
    data['minqty'] = this.minqty;
    data['maxqty'] = this.maxqty;
    data['mdat'] = this.mdat;
    return data;
  }
}
