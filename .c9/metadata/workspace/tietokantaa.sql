{"changed":false,"filter":false,"title":"tietokantaa.sql","tooltip":"/tietokantaa.sql","undoManager":{"mark":75,"position":75,"stack":[[{"start":{"row":59,"column":6},"end":{"row":60,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":60,"column":0},"end":{"row":60,"column":4},"action":"insert","lines":["    "]},{"start":{"row":60,"column":4},"end":{"row":61,"column":0},"action":"insert","lines":["",""]},{"start":{"row":61,"column":0},"end":{"row":61,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":61,"column":4},"end":{"row":65,"column":6},"action":"insert","lines":["create table kayttaja (","    id int primary key auto_increment,","    tunnus varchar(100) not null unique,","    salasana varchar(255) not null,","    );"],"id":3}],[{"start":{"row":61,"column":3},"end":{"row":61,"column":4},"action":"remove","lines":[" "],"id":4}],[{"start":{"row":61,"column":2},"end":{"row":61,"column":3},"action":"remove","lines":[" "],"id":6}],[{"start":{"row":61,"column":1},"end":{"row":61,"column":2},"action":"remove","lines":[" "],"id":7},{"start":{"row":61,"column":0},"end":{"row":61,"column":1},"action":"remove","lines":[" "]}],[{"start":{"row":65,"column":6},"end":{"row":66,"column":0},"action":"insert","lines":["",""],"id":8},{"start":{"row":66,"column":0},"end":{"row":66,"column":4},"action":"insert","lines":["    "]},{"start":{"row":66,"column":4},"end":{"row":67,"column":0},"action":"insert","lines":["",""]},{"start":{"row":67,"column":0},"end":{"row":67,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":67,"column":4},"end":{"row":67,"column":120},"action":"insert","lines":["insert into user_account (email,password,picture) values ('n8kuja00@students.oamk.fi',md5('testi123'),'nobody.jpg');"],"id":9}],[{"start":{"row":67,"column":16},"end":{"row":67,"column":28},"action":"remove","lines":["user_account"],"id":10},{"start":{"row":67,"column":16},"end":{"row":67,"column":17},"action":"insert","lines":["k"]},{"start":{"row":67,"column":17},"end":{"row":67,"column":18},"action":"insert","lines":["a"]},{"start":{"row":67,"column":18},"end":{"row":67,"column":19},"action":"insert","lines":["y"]},{"start":{"row":67,"column":19},"end":{"row":67,"column":20},"action":"insert","lines":["t"]},{"start":{"row":67,"column":20},"end":{"row":67,"column":21},"action":"insert","lines":["t"]},{"start":{"row":67,"column":21},"end":{"row":67,"column":22},"action":"insert","lines":["a"]},{"start":{"row":67,"column":22},"end":{"row":67,"column":23},"action":"insert","lines":["j"]},{"start":{"row":67,"column":23},"end":{"row":67,"column":24},"action":"insert","lines":["a"]}],[{"start":{"row":67,"column":26},"end":{"row":67,"column":31},"action":"remove","lines":["email"],"id":11},{"start":{"row":67,"column":26},"end":{"row":67,"column":27},"action":"insert","lines":["t"]},{"start":{"row":67,"column":27},"end":{"row":67,"column":28},"action":"insert","lines":["u"]},{"start":{"row":67,"column":28},"end":{"row":67,"column":29},"action":"insert","lines":["n"]},{"start":{"row":67,"column":29},"end":{"row":67,"column":30},"action":"insert","lines":["n"]},{"start":{"row":67,"column":30},"end":{"row":67,"column":31},"action":"insert","lines":["u"]},{"start":{"row":67,"column":31},"end":{"row":67,"column":32},"action":"insert","lines":["s"]}],[{"start":{"row":67,"column":33},"end":{"row":67,"column":41},"action":"remove","lines":["password"],"id":12},{"start":{"row":67,"column":33},"end":{"row":67,"column":34},"action":"insert","lines":["s"]},{"start":{"row":67,"column":34},"end":{"row":67,"column":35},"action":"insert","lines":["a"]}],[{"start":{"row":67,"column":33},"end":{"row":67,"column":35},"action":"remove","lines":["sa"],"id":13},{"start":{"row":67,"column":33},"end":{"row":67,"column":41},"action":"insert","lines":["salasana"]}],[{"start":{"row":67,"column":41},"end":{"row":67,"column":49},"action":"remove","lines":[",picture"],"id":14}],[{"start":{"row":67,"column":52},"end":{"row":67,"column":77},"action":"remove","lines":["n8kuja00@students.oamk.fi"],"id":15},{"start":{"row":67,"column":52},"end":{"row":67,"column":53},"action":"insert","lines":["a"]},{"start":{"row":67,"column":53},"end":{"row":67,"column":54},"action":"insert","lines":["d"]},{"start":{"row":67,"column":54},"end":{"row":67,"column":55},"action":"insert","lines":["m"]},{"start":{"row":67,"column":55},"end":{"row":67,"column":56},"action":"insert","lines":["i"]},{"start":{"row":67,"column":56},"end":{"row":67,"column":57},"action":"insert","lines":["n"]}],[{"start":{"row":67,"column":64},"end":{"row":67,"column":72},"action":"remove","lines":["testi123"],"id":16},{"start":{"row":67,"column":64},"end":{"row":67,"column":65},"action":"insert","lines":["a"]},{"start":{"row":67,"column":65},"end":{"row":67,"column":66},"action":"insert","lines":["d"]},{"start":{"row":67,"column":66},"end":{"row":67,"column":67},"action":"insert","lines":["m"]},{"start":{"row":67,"column":67},"end":{"row":67,"column":68},"action":"insert","lines":["i"]},{"start":{"row":67,"column":68},"end":{"row":67,"column":69},"action":"insert","lines":["n"]}],[{"start":{"row":67,"column":71},"end":{"row":67,"column":84},"action":"remove","lines":[",'nobody.jpg'"],"id":17}],[{"start":{"row":64,"column":34},"end":{"row":64,"column":35},"action":"remove","lines":[","],"id":18}],[{"start":{"row":82,"column":0},"end":{"row":82,"column":1},"action":"remove","lines":[";"],"id":19}],[{"start":{"row":82,"column":0},"end":{"row":82,"column":1},"action":"insert","lines":["m"],"id":20},{"start":{"row":82,"column":1},"end":{"row":82,"column":2},"action":"insert","lines":["u"]},{"start":{"row":82,"column":2},"end":{"row":82,"column":3},"action":"insert","lines":["i"]},{"start":{"row":82,"column":3},"end":{"row":82,"column":4},"action":"insert","lines":["t"]},{"start":{"row":82,"column":4},"end":{"row":82,"column":5},"action":"insert","lines":["a"]}],[{"start":{"row":82,"column":5},"end":{"row":82,"column":6},"action":"insert","lines":[" "],"id":21},{"start":{"row":82,"column":6},"end":{"row":82,"column":7},"action":"insert","lines":["h"]},{"start":{"row":82,"column":7},"end":{"row":82,"column":8},"action":"insert","lines":["y"]},{"start":{"row":82,"column":8},"end":{"row":82,"column":9},"action":"insert","lines":["ö"]},{"start":{"row":82,"column":9},"end":{"row":82,"column":10},"action":"insert","lines":["d"]},{"start":{"row":82,"column":10},"end":{"row":82,"column":11},"action":"insert","lines":["y"]}],[{"start":{"row":82,"column":11},"end":{"row":82,"column":12},"action":"insert","lines":["l"],"id":22},{"start":{"row":82,"column":12},"end":{"row":82,"column":13},"action":"insert","lines":["l"]},{"start":{"row":82,"column":13},"end":{"row":82,"column":14},"action":"insert","lines":["i"]},{"start":{"row":82,"column":14},"end":{"row":82,"column":15},"action":"insert","lines":["s"]},{"start":{"row":82,"column":15},"end":{"row":82,"column":16},"action":"insert","lines":["i"]},{"start":{"row":82,"column":16},"end":{"row":82,"column":17},"action":"insert","lines":["ä"]}],[{"start":{"row":82,"column":17},"end":{"row":82,"column":18},"action":"insert","lines":[" "],"id":23},{"start":{"row":82,"column":18},"end":{"row":82,"column":19},"action":"insert","lines":["k"]},{"start":{"row":82,"column":19},"end":{"row":82,"column":20},"action":"insert","lines":["o"]},{"start":{"row":82,"column":20},"end":{"row":82,"column":21},"action":"insert","lines":["m"]},{"start":{"row":82,"column":21},"end":{"row":82,"column":22},"action":"insert","lines":["e"]},{"start":{"row":82,"column":22},"end":{"row":82,"column":23},"action":"insert","lines":["n"]},{"start":{"row":82,"column":23},"end":{"row":82,"column":24},"action":"insert","lines":["t"]},{"start":{"row":82,"column":24},"end":{"row":82,"column":25},"action":"insert","lines":["o"]},{"start":{"row":82,"column":25},"end":{"row":82,"column":26},"action":"insert","lines":["j"]},{"start":{"row":82,"column":26},"end":{"row":82,"column":27},"action":"insert","lines":["a"]}],[{"start":{"row":82,"column":27},"end":{"row":82,"column":28},"action":"insert","lines":[" "],"id":24},{"start":{"row":82,"column":28},"end":{"row":82,"column":29},"action":"insert","lines":[";"]},{"start":{"row":82,"column":29},"end":{"row":82,"column":30},"action":"insert","lines":[";"]}],[{"start":{"row":82,"column":29},"end":{"row":82,"column":30},"action":"remove","lines":[";"],"id":25},{"start":{"row":82,"column":28},"end":{"row":82,"column":29},"action":"remove","lines":[";"]},{"start":{"row":82,"column":27},"end":{"row":82,"column":28},"action":"remove","lines":[" "]}],[{"start":{"row":82,"column":27},"end":{"row":82,"column":28},"action":"insert","lines":[" "],"id":26},{"start":{"row":82,"column":28},"end":{"row":82,"column":29},"action":"insert","lines":[":"]}],[{"start":{"row":82,"column":29},"end":{"row":83,"column":0},"action":"insert","lines":["",""],"id":27},{"start":{"row":83,"column":0},"end":{"row":84,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":84,"column":0},"end":{"row":84,"column":38},"action":"insert","lines":["ALTER TABLE tbl_Country DROP IsDeleted"],"id":28}],[{"start":{"row":84,"column":12},"end":{"row":84,"column":23},"action":"remove","lines":["tbl_Country"],"id":29},{"start":{"row":84,"column":12},"end":{"row":84,"column":13},"action":"insert","lines":["t"]},{"start":{"row":84,"column":13},"end":{"row":84,"column":14},"action":"insert","lines":["ä"]},{"start":{"row":84,"column":14},"end":{"row":84,"column":15},"action":"insert","lines":["h"]},{"start":{"row":84,"column":15},"end":{"row":84,"column":16},"action":"insert","lines":["ä"]},{"start":{"row":84,"column":16},"end":{"row":84,"column":17},"action":"insert","lines":["n"]},{"start":{"row":84,"column":17},"end":{"row":84,"column":18},"action":"insert","lines":["t"]},{"start":{"row":84,"column":18},"end":{"row":84,"column":19},"action":"insert","lines":["a"]},{"start":{"row":84,"column":19},"end":{"row":84,"column":20},"action":"insert","lines":["u"]}],[{"start":{"row":84,"column":20},"end":{"row":84,"column":21},"action":"insert","lines":["l"],"id":30},{"start":{"row":84,"column":21},"end":{"row":84,"column":22},"action":"insert","lines":["u"]},{"start":{"row":84,"column":22},"end":{"row":84,"column":23},"action":"insert","lines":["n"]},{"start":{"row":84,"column":23},"end":{"row":84,"column":24},"action":"insert","lines":["n"]},{"start":{"row":84,"column":24},"end":{"row":84,"column":25},"action":"insert","lines":["i"]},{"start":{"row":84,"column":25},"end":{"row":84,"column":26},"action":"insert","lines":["m"]},{"start":{"row":84,"column":26},"end":{"row":84,"column":27},"action":"insert","lines":["i"]}],[{"start":{"row":84,"column":33},"end":{"row":84,"column":42},"action":"remove","lines":["IsDeleted"],"id":31},{"start":{"row":84,"column":33},"end":{"row":84,"column":34},"action":"insert","lines":["t"]},{"start":{"row":84,"column":34},"end":{"row":84,"column":35},"action":"insert","lines":["ä"]},{"start":{"row":84,"column":35},"end":{"row":84,"column":36},"action":"insert","lines":["h"]},{"start":{"row":84,"column":36},"end":{"row":84,"column":37},"action":"insert","lines":["ä"]},{"start":{"row":84,"column":37},"end":{"row":84,"column":38},"action":"insert","lines":["n"]},{"start":{"row":84,"column":38},"end":{"row":84,"column":39},"action":"insert","lines":["r"]}],[{"start":{"row":84,"column":39},"end":{"row":84,"column":40},"action":"insert","lines":["i"],"id":32},{"start":{"row":84,"column":40},"end":{"row":84,"column":41},"action":"insert","lines":["v"]},{"start":{"row":84,"column":41},"end":{"row":84,"column":42},"action":"insert","lines":["i"]},{"start":{"row":84,"column":42},"end":{"row":84,"column":43},"action":"insert","lines":["n"]}],[{"start":{"row":84,"column":42},"end":{"row":84,"column":43},"action":"remove","lines":["n"],"id":33},{"start":{"row":84,"column":41},"end":{"row":84,"column":42},"action":"remove","lines":["i"]},{"start":{"row":84,"column":40},"end":{"row":84,"column":41},"action":"remove","lines":["v"]},{"start":{"row":84,"column":39},"end":{"row":84,"column":40},"action":"remove","lines":["i"]},{"start":{"row":84,"column":38},"end":{"row":84,"column":39},"action":"remove","lines":["r"]}],[{"start":{"row":84,"column":38},"end":{"row":84,"column":39},"action":"insert","lines":["s"],"id":34},{"start":{"row":84,"column":39},"end":{"row":84,"column":40},"action":"insert","lines":["a"]},{"start":{"row":84,"column":40},"end":{"row":84,"column":41},"action":"insert","lines":["r"]},{"start":{"row":84,"column":41},"end":{"row":84,"column":42},"action":"insert","lines":["a"]},{"start":{"row":84,"column":42},"end":{"row":84,"column":43},"action":"insert","lines":["k"]},{"start":{"row":84,"column":43},"end":{"row":84,"column":44},"action":"insert","lines":["k"]},{"start":{"row":84,"column":44},"end":{"row":84,"column":45},"action":"insert","lines":["a"]},{"start":{"row":84,"column":45},"end":{"row":84,"column":46},"action":"insert","lines":["a"]},{"start":{"row":84,"column":46},"end":{"row":84,"column":47},"action":"insert","lines":["n"]}],[{"start":{"row":84,"column":46},"end":{"row":84,"column":47},"action":"remove","lines":["n"],"id":35},{"start":{"row":84,"column":45},"end":{"row":84,"column":46},"action":"remove","lines":["a"]},{"start":{"row":84,"column":44},"end":{"row":84,"column":45},"action":"remove","lines":["a"]}],[{"start":{"row":84,"column":44},"end":{"row":84,"column":45},"action":"insert","lines":["e"],"id":36},{"start":{"row":84,"column":45},"end":{"row":84,"column":46},"action":"insert","lines":["e"]},{"start":{"row":84,"column":46},"end":{"row":84,"column":47},"action":"insert","lines":["n"]},{"start":{"row":84,"column":47},"end":{"row":84,"column":48},"action":"insert","lines":["n"]},{"start":{"row":84,"column":48},"end":{"row":84,"column":49},"action":"insert","lines":["i"]},{"start":{"row":84,"column":49},"end":{"row":84,"column":50},"action":"insert","lines":["m"]},{"start":{"row":84,"column":50},"end":{"row":84,"column":51},"action":"insert","lines":["i"]}],[{"start":{"row":84,"column":51},"end":{"row":84,"column":52},"action":"insert","lines":["."],"id":37}],[{"start":{"row":84,"column":52},"end":{"row":84,"column":53},"action":"insert","lines":[" "],"id":38},{"start":{"row":84,"column":53},"end":{"row":84,"column":54},"action":"insert","lines":["l"]},{"start":{"row":84,"column":54},"end":{"row":84,"column":55},"action":"insert","lines":["ä"]},{"start":{"row":84,"column":55},"end":{"row":84,"column":56},"action":"insert","lines":["h"]},{"start":{"row":84,"column":56},"end":{"row":84,"column":57},"action":"insert","lines":["t"]},{"start":{"row":84,"column":57},"end":{"row":84,"column":58},"action":"insert","lines":["e"]},{"start":{"row":84,"column":58},"end":{"row":84,"column":59},"action":"insert","lines":["e"]}],[{"start":{"row":84,"column":59},"end":{"row":84,"column":60},"action":"insert","lines":[" "],"id":39},{"start":{"row":84,"column":60},"end":{"row":84,"column":61},"action":"insert","lines":["s"]},{"start":{"row":84,"column":61},"end":{"row":84,"column":62},"action":"insert","lines":["r"]}],[{"start":{"row":84,"column":61},"end":{"row":84,"column":62},"action":"remove","lines":["r"],"id":40}],[{"start":{"row":84,"column":61},"end":{"row":84,"column":62},"action":"insert","lines":["a"],"id":41},{"start":{"row":84,"column":62},"end":{"row":84,"column":63},"action":"insert","lines":["r"]},{"start":{"row":84,"column":63},"end":{"row":84,"column":64},"action":"insert","lines":["a"]},{"start":{"row":84,"column":64},"end":{"row":84,"column":65},"action":"insert","lines":["k"]},{"start":{"row":84,"column":65},"end":{"row":84,"column":66},"action":"insert","lines":["e"]},{"start":{"row":84,"column":66},"end":{"row":84,"column":67},"action":"insert","lines":["="]}],[{"start":{"row":84,"column":67},"end":{"row":84,"column":68},"action":"insert","lines":["c"],"id":42},{"start":{"row":84,"column":68},"end":{"row":84,"column":69},"action":"insert","lines":["o"]},{"start":{"row":84,"column":69},"end":{"row":84,"column":70},"action":"insert","lines":["l"]},{"start":{"row":84,"column":70},"end":{"row":84,"column":71},"action":"insert","lines":["u"]},{"start":{"row":84,"column":71},"end":{"row":84,"column":72},"action":"insert","lines":["m"]},{"start":{"row":84,"column":72},"end":{"row":84,"column":73},"action":"insert","lines":["n"]}],[{"start":{"row":84,"column":73},"end":{"row":84,"column":74},"action":"insert","lines":[" "],"id":43},{"start":{"row":84,"column":74},"end":{"row":84,"column":75},"action":"insert","lines":["t"]},{"start":{"row":84,"column":75},"end":{"row":84,"column":76},"action":"insert","lines":["a"]},{"start":{"row":84,"column":76},"end":{"row":84,"column":77},"action":"insert","lines":["u"]},{"start":{"row":84,"column":77},"end":{"row":84,"column":78},"action":"insert","lines":["l"]},{"start":{"row":84,"column":78},"end":{"row":84,"column":79},"action":"insert","lines":["u"]},{"start":{"row":84,"column":79},"end":{"row":84,"column":80},"action":"insert","lines":["s"]}],[{"start":{"row":84,"column":80},"end":{"row":84,"column":81},"action":"insert","lines":["t"],"id":44},{"start":{"row":84,"column":81},"end":{"row":84,"column":82},"action":"insert","lines":["a"]},{"start":{"row":84,"column":82},"end":{"row":84,"column":83},"action":"insert","lines":[","]}],[{"start":{"row":84,"column":83},"end":{"row":84,"column":84},"action":"insert","lines":[" "],"id":45}],[{"start":{"row":84,"column":83},"end":{"row":84,"column":84},"action":"remove","lines":[" "],"id":46},{"start":{"row":84,"column":82},"end":{"row":84,"column":83},"action":"remove","lines":[","]},{"start":{"row":84,"column":81},"end":{"row":84,"column":82},"action":"remove","lines":["a"]}],[{"start":{"row":84,"column":81},"end":{"row":84,"column":82},"action":"insert","lines":["a"],"id":47},{"start":{"row":84,"column":82},"end":{"row":84,"column":83},"action":"insert","lines":["."]}],[{"start":{"row":76,"column":44},"end":{"row":76,"column":57},"action":"remove","lines":["uusi_kaytetty"],"id":48},{"start":{"row":76,"column":43},"end":{"row":76,"column":44},"action":"remove","lines":[","]}],[{"start":{"row":73,"column":43},"end":{"row":73,"column":57},"action":"remove","lines":[",uusi_kaytetty"],"id":49}],[{"start":{"row":77,"column":32},"end":{"row":77,"column":36},"action":"remove","lines":[",'U'"],"id":50}],[{"start":{"row":74,"column":39},"end":{"row":74,"column":42},"action":"remove","lines":["'U'"],"id":51},{"start":{"row":74,"column":38},"end":{"row":74,"column":39},"action":"remove","lines":[","]}],[{"start":{"row":20,"column":4},"end":{"row":20,"column":35},"action":"remove","lines":["uusi_kaytetty char(1) not null,"],"id":52},{"start":{"row":20,"column":0},"end":{"row":20,"column":4},"action":"remove","lines":["    "]},{"start":{"row":19,"column":31},"end":{"row":20,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":84,"column":0},"end":{"row":85,"column":0},"action":"insert","lines":["",""],"id":53}],[{"start":{"row":85,"column":0},"end":{"row":86,"column":40},"action":"insert","lines":["ALTER TABLE vendors","ADD COLUMN phone VARCHAR(15) AFTER name;"],"id":54}],[{"start":{"row":86,"column":11},"end":{"row":86,"column":16},"action":"remove","lines":["phone"],"id":55},{"start":{"row":86,"column":11},"end":{"row":86,"column":12},"action":"insert","lines":["t"]},{"start":{"row":86,"column":12},"end":{"row":86,"column":13},"action":"insert","lines":["ä"]},{"start":{"row":86,"column":13},"end":{"row":86,"column":14},"action":"insert","lines":["h"]},{"start":{"row":86,"column":14},"end":{"row":86,"column":15},"action":"insert","lines":["ä"]},{"start":{"row":86,"column":15},"end":{"row":86,"column":16},"action":"insert","lines":["n"]},{"start":{"row":86,"column":16},"end":{"row":86,"column":17},"action":"insert","lines":["t"]},{"start":{"row":86,"column":17},"end":{"row":86,"column":18},"action":"insert","lines":["a"]},{"start":{"row":86,"column":18},"end":{"row":86,"column":19},"action":"insert","lines":["u"]},{"start":{"row":86,"column":19},"end":{"row":86,"column":20},"action":"insert","lines":["l"]},{"start":{"row":86,"column":20},"end":{"row":86,"column":21},"action":"insert","lines":["u"]},{"start":{"row":86,"column":21},"end":{"row":86,"column":22},"action":"insert","lines":["n"]},{"start":{"row":86,"column":22},"end":{"row":86,"column":23},"action":"insert","lines":["i"]},{"start":{"row":86,"column":23},"end":{"row":86,"column":24},"action":"insert","lines":["m"]},{"start":{"row":86,"column":24},"end":{"row":86,"column":25},"action":"insert","lines":["i"]}],[{"start":{"row":86,"column":22},"end":{"row":86,"column":23},"action":"insert","lines":["n"],"id":56}],[{"start":{"row":86,"column":27},"end":{"row":86,"column":28},"action":"insert","lines":["t"],"id":57},{"start":{"row":86,"column":28},"end":{"row":86,"column":29},"action":"insert","lines":["ä"]},{"start":{"row":86,"column":29},"end":{"row":86,"column":30},"action":"insert","lines":["h"]},{"start":{"row":86,"column":30},"end":{"row":86,"column":31},"action":"insert","lines":["ä"]},{"start":{"row":86,"column":31},"end":{"row":86,"column":32},"action":"insert","lines":["n"]},{"start":{"row":86,"column":32},"end":{"row":86,"column":33},"action":"insert","lines":["t"]},{"start":{"row":86,"column":33},"end":{"row":86,"column":34},"action":"insert","lines":["i"]},{"start":{"row":86,"column":34},"end":{"row":86,"column":35},"action":"insert","lines":["e"]},{"start":{"row":86,"column":35},"end":{"row":86,"column":36},"action":"insert","lines":["t"]},{"start":{"row":86,"column":36},"end":{"row":86,"column":37},"action":"insert","lines":["o"]},{"start":{"row":86,"column":37},"end":{"row":86,"column":38},"action":"insert","lines":["t"]}],[{"start":{"row":86,"column":38},"end":{"row":86,"column":39},"action":"insert","lines":["u"],"id":58}],[{"start":{"row":86,"column":38},"end":{"row":86,"column":39},"action":"remove","lines":["u"],"id":59}],[{"start":{"row":86,"column":38},"end":{"row":86,"column":39},"action":"insert","lines":["y"],"id":60},{"start":{"row":86,"column":39},"end":{"row":86,"column":40},"action":"insert","lines":["y"]},{"start":{"row":86,"column":40},"end":{"row":86,"column":41},"action":"insert","lines":["p"]},{"start":{"row":86,"column":41},"end":{"row":86,"column":42},"action":"insert","lines":["p"]},{"start":{"row":86,"column":42},"end":{"row":86,"column":43},"action":"insert","lines":["i"]}],[{"start":{"row":86,"column":43},"end":{"row":86,"column":44},"action":"insert","lines":["("],"id":61},{"start":{"row":86,"column":44},"end":{"row":86,"column":45},"action":"insert","lines":["E"]},{"start":{"row":86,"column":45},"end":{"row":86,"column":46},"action":"insert","lines":["S"]},{"start":{"row":86,"column":46},"end":{"row":86,"column":47},"action":"insert","lines":["I"]},{"start":{"row":86,"column":47},"end":{"row":86,"column":48},"action":"insert","lines":["M"]}],[{"start":{"row":86,"column":48},"end":{"row":86,"column":49},"action":"insert","lines":[":"],"id":62}],[{"start":{"row":86,"column":60},"end":{"row":86,"column":61},"action":"insert","lines":[")"],"id":63}],[{"start":{"row":86,"column":68},"end":{"row":86,"column":72},"action":"remove","lines":["name"],"id":64},{"start":{"row":86,"column":68},"end":{"row":86,"column":69},"action":"insert","lines":["T"]},{"start":{"row":86,"column":69},"end":{"row":86,"column":70},"action":"insert","lines":["Ä"]},{"start":{"row":86,"column":70},"end":{"row":86,"column":71},"action":"insert","lines":["H"]},{"start":{"row":86,"column":71},"end":{"row":86,"column":72},"action":"insert","lines":["Ä"]},{"start":{"row":86,"column":72},"end":{"row":86,"column":73},"action":"insert","lines":["N"]}],[{"start":{"row":86,"column":72},"end":{"row":86,"column":73},"action":"remove","lines":["N"],"id":65},{"start":{"row":86,"column":71},"end":{"row":86,"column":72},"action":"remove","lines":["Ä"]},{"start":{"row":86,"column":70},"end":{"row":86,"column":71},"action":"remove","lines":["H"]},{"start":{"row":86,"column":69},"end":{"row":86,"column":70},"action":"remove","lines":["Ä"]},{"start":{"row":86,"column":68},"end":{"row":86,"column":69},"action":"remove","lines":["T"]}],[{"start":{"row":86,"column":68},"end":{"row":86,"column":69},"action":"insert","lines":["t"],"id":66},{"start":{"row":86,"column":69},"end":{"row":86,"column":70},"action":"insert","lines":["ä"]},{"start":{"row":86,"column":70},"end":{"row":86,"column":71},"action":"insert","lines":["h"]},{"start":{"row":86,"column":71},"end":{"row":86,"column":72},"action":"insert","lines":["ä"]},{"start":{"row":86,"column":72},"end":{"row":86,"column":73},"action":"insert","lines":["n"]}],[{"start":{"row":86,"column":73},"end":{"row":86,"column":74},"action":"insert","lines":["k"],"id":67},{"start":{"row":86,"column":74},"end":{"row":86,"column":75},"action":"insert","lines":["o"]},{"start":{"row":86,"column":75},"end":{"row":86,"column":76},"action":"insert","lines":["h"]},{"start":{"row":86,"column":76},"end":{"row":86,"column":77},"action":"insert","lines":["t"]},{"start":{"row":86,"column":77},"end":{"row":86,"column":78},"action":"insert","lines":["a"]}],[{"start":{"row":86,"column":78},"end":{"row":86,"column":79},"action":"insert","lines":[" "],"id":68},{"start":{"row":86,"column":79},"end":{"row":86,"column":80},"action":"insert","lines":["m"]},{"start":{"row":86,"column":80},"end":{"row":86,"column":81},"action":"insert","lines":["i"]},{"start":{"row":86,"column":81},"end":{"row":86,"column":82},"action":"insert","lines":["h"]},{"start":{"row":86,"column":82},"end":{"row":86,"column":83},"action":"insert","lines":["i"]},{"start":{"row":86,"column":83},"end":{"row":86,"column":84},"action":"insert","lines":["n"]}],[{"start":{"row":86,"column":84},"end":{"row":86,"column":85},"action":"insert","lines":[" "],"id":69},{"start":{"row":86,"column":85},"end":{"row":86,"column":86},"action":"insert","lines":["s"]},{"start":{"row":86,"column":86},"end":{"row":86,"column":87},"action":"insert","lines":["e"]}],[{"start":{"row":86,"column":87},"end":{"row":86,"column":88},"action":"insert","lines":[" "],"id":70},{"start":{"row":86,"column":88},"end":{"row":86,"column":89},"action":"insert","lines":["l"]},{"start":{"row":86,"column":89},"end":{"row":86,"column":90},"action":"insert","lines":["i"]},{"start":{"row":86,"column":90},"end":{"row":86,"column":91},"action":"insert","lines":["s"]},{"start":{"row":86,"column":91},"end":{"row":86,"column":92},"action":"insert","lines":["t"]},{"start":{"row":86,"column":92},"end":{"row":86,"column":93},"action":"insert","lines":["ä"]}],[{"start":{"row":86,"column":92},"end":{"row":86,"column":93},"action":"remove","lines":["ä"],"id":71},{"start":{"row":86,"column":91},"end":{"row":86,"column":92},"action":"remove","lines":["t"]}],[{"start":{"row":86,"column":91},"end":{"row":86,"column":92},"action":"insert","lines":["ä"],"id":72},{"start":{"row":86,"column":92},"end":{"row":86,"column":93},"action":"insert","lines":["t"]},{"start":{"row":86,"column":93},"end":{"row":86,"column":94},"action":"insert","lines":["ä"]},{"start":{"row":86,"column":94},"end":{"row":86,"column":95},"action":"insert","lines":["ä"]},{"start":{"row":86,"column":95},"end":{"row":86,"column":96},"action":"insert","lines":["n"]},{"start":{"row":86,"column":96},"end":{"row":86,"column":97},"action":"insert","lines":["."]}],[{"start":{"row":86,"column":97},"end":{"row":86,"column":98},"action":"insert","lines":[" "],"id":73}],[{"start":{"row":86,"column":97},"end":{"row":86,"column":98},"action":"remove","lines":[" "],"id":74}],[{"start":{"row":86,"column":97},"end":{"row":86,"column":98},"action":"insert","lines":[" "],"id":75},{"start":{"row":86,"column":98},"end":{"row":86,"column":99},"action":"insert","lines":["e"]},{"start":{"row":86,"column":99},"end":{"row":86,"column":100},"action":"insert","lines":["l"]},{"start":{"row":86,"column":100},"end":{"row":86,"column":101},"action":"insert","lines":["i"]}],[{"start":{"row":86,"column":101},"end":{"row":86,"column":102},"action":"insert","lines":[" "],"id":76},{"start":{"row":86,"column":102},"end":{"row":86,"column":103},"action":"insert","lines":["a"]}],[{"start":{"row":86,"column":102},"end":{"row":86,"column":103},"action":"remove","lines":["a"],"id":77},{"start":{"row":86,"column":101},"end":{"row":86,"column":102},"action":"remove","lines":[" "]},{"start":{"row":86,"column":100},"end":{"row":86,"column":101},"action":"remove","lines":["i"]},{"start":{"row":86,"column":99},"end":{"row":86,"column":100},"action":"remove","lines":["l"]},{"start":{"row":86,"column":98},"end":{"row":86,"column":99},"action":"remove","lines":["e"]},{"start":{"row":86,"column":97},"end":{"row":86,"column":98},"action":"remove","lines":[" "]}],[{"start":{"row":86,"column":97},"end":{"row":86,"column":98},"action":"remove","lines":[";"],"id":78}]]},"ace":{"folds":[],"scrolltop":101.5,"scrollleft":0,"selection":{"start":{"row":86,"column":97},"end":{"row":86,"column":97},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":5,"state":"start","mode":"ace/mode/sql"}},"timestamp":1552083608248}