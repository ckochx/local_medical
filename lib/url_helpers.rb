class UrlHelpers

  DEFAULT_URL = "http://www.anrdoezrs.net/pt112biroiq5DEBE78B577CAEE8B57A7867767D666"

  CITY_URL = {
    'Atlanta' => "http://www.jdoqocy.com/n2117y1A719PXYVYRSVPRRWYYZZYPRURSQRRQRXQQQ",
    'Austin' => " http://www.jdoqocy.com/h6116p-85-7NVWTWPQTNPPUWXOOTNPSPQOPPOPVOOO",
    'Charlotte' => "http://www.kqzyfj.com/k9122js0ys-FNOLOHILFHHMOOPPKFHKHIGHHGHNGGG",
    'Cleveland' => "http://www.kqzyfj.com/nf101xdmjdl0896923602279A11A02523122128111",
    'Columbus' => " http://www.dpbolvw.net/ki101y1A719PXYVYRSVPRRWYYZZVPRURSQRRQRXQQQ",
    'Detroit' => "http://www.dpbolvw.net/fo122vpyvpxCKLILEFICEEJLLMLJCEHEFDEEDEKDDD",
    'Houston' => "http://www.anrdoezrs.net/fg102shqnhp4CDAD67A466BDE55C4696756656C555",
    'Indianapolis' => " http://www.kqzyfj.com/c4106y1A719PXYVYRSVPRRWYYZZWPRURSQRRQRXQQQ",
    'Las Vegas' => "http://www.kqzyfj.com/qj97kjspjr6EFCF89C688DFG77868B8978878E777",
    'Los Angeles' => "http://www.kqzyfj.com/o2115vpyvpxCKLILEFICEEJLMDDJCEHEFDEEDEKDDD",
    'Miami' => "http://www.kqzyfj.com/dc100dlurlt8GHEHABE8AAFHI99D8ADAB9AA9AG999",
    'Minneapolis' => "http://www.dpbolvw.net/hp121iqzwqyDLMJMFGJDFFKMNEEMDFIFGEFFEFLEEE",
    'New York City' => "http://www.anrdoezrs.net/hc103ar-xrzEMNKNGHKEGGLNNOOOEGJGHFGGFGMFFF",
    'Philadelphia' => " http://www.jdoqocy.com/4j116gv30v2IQRORKLOIKKPRSJJJIKNKLJKKJKQJJJ",
    'Phoenix' => "http://www.kqzyfj.com/e6108zw41w3JRSPSLMPJLLQSSTSSJLOLMKLLKLRKKK",
    'Pittsburgh' => " http://www.kqzyfj.com/e466kjspjr6EFCF89C688DFFGG968B8978878E777",
    'Portland' => " http://www.tkqlhce.com/oq68ft1zt0GOPMPIJMGIINPQHHJGILIJHIIHIOHHH",
    'San Antonio' => "http://www.jdoqocy.com/t697qgpmgo3BC9C569355ACCDCD3585645545B444",
    'San Diego' => "http://www.kqzyfj.com/n870iqzwqyDLMJMFGJDFFKMMNNFDFIFGEFFEFLEEE",
    'San Francisco' => "http://www.dpbolvw.net/kg115uoxuowBJKHKDEHBDDIKKLLJBDGDECDDCDJCCC",
    'Seattle' => "http://www.jdoqocy.com/3a74js0ys-FNOLOHILFHHMOOPPJFHKHIGHHGHNGGG",
    'Tampa' => "http://www.kqzyfj.com/mf98dlurlt8GHEHABE8AAFHI99C8ADAB9AA9AG999",
    'Washington' => " http://www.dpbolvw.net/76116biroiq5DEBE78B577CEEFF657A7867767D666",
  }
  PROMO_URLS = {
    'default_url' => DEFAULT_URL,
    '$10 off' => "http://www.anrdoezrs.net/88115js0ys-FNOLOHILFHHMOGJGNFHKHIGHHGHNGGG",
    'online testing' => "http://www.jdoqocy.com/mc104qgpmgo3BC9C569355A849A83585645545B444",
    'discreet testing' => "http://www.kqzyfj.com/7081wktqks7FGDG9AD799ECGF9D79C9A89989F888",
    'private testing' => "http://www.kqzyfj.com/pt112shqnhp4CDAD67A466B9DB684696756656C555",
    'order testing' => "http://www.anrdoezrs.net/4n98mu2-u1HPQNQJKNHJJOMQOIIHJMJKIJJIJPIII",
    'affordable testing' => "http://www.jdoqocy.com/9d77zw41w3JRSPSLMPJLLQOSQLLJLOLMKLLKLRKKK",
    'local testing' => "http://www.anrdoezrs.net/pt112biroiq5DEBE78B577CAEE8B57A7867767D666",
    'testing' => "",
  }

  def self.get_city_url(city)
    CITY_URL[city] || DEFAULT_URL
  end

  def self.promo_urls
    PROMO_URLS
  end
end

