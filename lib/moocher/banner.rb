module Moocher
  class Banner
    def initialize(env = ENV)
      @env = env
    end

    def to_s
      moocher_banner
    end

    def moocher_banner
      "'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''':::::::;'''''''''''''''''''''''''''''''''''''':,,,,,,,,''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''';       :'''''''''''''''''''''''''''''''''''''';`       ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''      :'''''''';.`'''''''''''''''''';`:'''''''';`      ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''     :'''''''',   ;''''''''''''''''',  .'''''''';      ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''    .''''''''.    `'''''''''''''''''    `;''''''':     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''   `'''''''';      '''''''''''''''';      :''''''',    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''   ;''''''''';     :''''''''''''''',       :'''''''`   ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''  ,''''''''''';    .'''''''''''''''`        :'''''';   ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''' `''''''''''''':    '''''''''''''';          ;'''''',  ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''' :'''''',`'''''':   :''''''''''''',          `'''''';  ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''`'''''':  `'''''':  .'''''''''''''`           ,''''''. ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''':''''''`   `'''''': `'''''''''''';             ;'''''; ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''':     .'''''', :''''''''''',             .''''''.''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''''''''`      `'''''',.'''''''''''.              ;''''':''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''''''':        .'''''','''''''''''               .''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''';;;''''''''''''''''''''''''''''''''':;'''''''''''''''''''''''''''''''''
''''''''''''''''''''''.         .'''''''''''''''',               `'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''':   ;'''''''''''''''''''''''''''''''`  ;''''''''''''''''''''''''''''''''
''''''''''''''''''''''           ,'''''''''''''''`                :''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''':   ;'''''''''''''''''''''''''''''':   ,''''''''''''''''''''''''''''''''
''''''''''''''''''''';            .''''''''''''';                 ,''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''':   ;'''''''''''''''''''''''''''''';   ;''''''''''''''''''''''''''''''''
'''''''''''''''''''''.             ,'''''''''''':                 `''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''':   ;''''''''''''''''''''''''''''''';.,'''''''''''''''''''''''''''''''''
'''''''''''''''''''''`              ,'''''''''''`                  ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''':   ;'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''''''`               :''''''''''                   '''''''''''';``.'. `;',  ,''''';`  `:'''''':`  .;''''''.  `;':   :` `;''''',` `,''''```;. '''''';```;'''',` `.;''''''''''''''''''''''
'''''''''''''''''''';`        `.      :'''''''',         .`        ;''''''''''':   `   `.    ,''',      .''''.      :''';`    :':       `''';`     `'''   `  ;''''':   :'''`      :'''''''''''''''''''''
'''''''''''''''''''';         `,       :'''''''`         :`        :''''''''''':             `'';    `   ,'',   `    ;''`     :':        :''.  .;.  ,''      ;''''':   :''.   `   `'''''''''''''''''''''
'''''''''''''''''''';         `;        :''''''`         '`        :''''''''''':   `:    :`   ;'.   ;;`  `''`  `;:   .';    ,,:':   .:   ,':   '';   ''    ``'''''':   :';   .',   :''''''''''''''''''''
'''''''''''''''''''';         `'`        :''''';`       `'`        :''''''''''':   :'`  .',   ;'`  `''.   ;;   :''   `',   ,'''':   ;;   ,'.   ...   ;'   `'''''''':   :':   :';   .''''''''''''''''''''
'''''''''''''''''''';         `'.         ;''''';       ,'`        :''''''''''':   :'`  .',   ;;   .'',   ;:   :''`  `'`   ;'''':   ;;   ,'.         ;'   .'''''''':   :',   ;''`  `''''''''''''''''''''
'''''''''''''''''''';`        `':          '''''';`     ;'`        ;''''''''''':   :'`  .',   ;;   .'',   ;:   :''`  `'`   ;'''':   ;;   ,'.   ,:::::''   .'''''''':   :',   ;''`  `''''''''''''''''''''
'''''''''''''''''''''`        `''`         :'''''';    `''`        '''''''''''':   :'`  .',   ;'`  `'',   ;;   :''   `',   ,'''':   ;;   ,'.   .'''',''   .'''''''':   :':   :';   .''''''''''''''''''''
'''''''''''''''''''''`        `''.         .''''''';   ,''`        '''''''''''':   :'`  .',   ;'`   ;;`  `''`  `':   ,';    ,,:':   ;;   ,':    .;: `''   .''',`;'':   :';   .',   :''''''''''''''''''''
'''''''''''''''''''''.        `'',         `'`;''''':  :''`       `'''''''''''':   :'`  .',   ;';    `   ,''.   `    '''`     :':   ;;   ,''.       `''   .'':  `'':   :''.   `   `'''''''''''''''''''''
''''''''''''''''''''';        `'';          . `;''''': '''`       ,'''''''''''':   :'`  .',   ;'',      .''''`      :''';`    :':   ;;   ,'''`      .''   .'',   '':   :'';`      :'''''''''''''''''''''
''''''''''''''''''''''        `'''`            `'''''':'''`       :'''''''''''';```;'.``.',```;''':`  `:'''''',`  .;''''';.  .'':```;;```:'''',`  .;'''```,'''` :'';```;'''',` `.'''''''''''''''''''''''
''''''''''''''''''''''.       `''':             `'''''''''`      `''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''''''':       `''';              `''''''''`      .''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''''''''`      `''''`              .'''''''`      ;''''':''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''':      `''''`               .'''''',     .''''''.''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''':''''''`     `'''':                .''''''.    ;''''';`''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''`'''''':     `'''''                `''''''',  ,''''''. ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''' :'''''',    `'''''.               .''''''''.`''''''; `''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''' `'''''''`   `''''',               :''''''''';'''''', `''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''  ,'''''''`  `''''';              `'''''''''''''''';  `''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''   ;'''''';` `''''''`             `''''''''''''''''`  `''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''   `''''''';``'''''',             ,'''''';'''''''',   `'''''''`;`;'''''''''''''''''''''''''''''''''''''':`''''''''''''''''''''''''''''';'''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''    .'''''''','''''';             ;'''''';''''''':    `'''''''`.,''';'''';'''';''''''';';''';'''';'''';':.;''';'''';'';;'''''';''''''',.'''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''     :'''''''''''''''`           `'''''''''''''';     `'''''''``,''...''..:'.``;''''.``.`;'.`.''.`.''..':``,';..;'``':`.;''''``,',...'.`;''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''      :''''''''''''''.           ,''''''''''''';`     `'''''''`..';`,`':`,.'.,,.''''.:`:`;;`;.;;`;`;;`'':.,.'...:'`:':`:'''',.:`',.,,',.'''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''       :''''''''''''':           :'''''''''''';`      `'''''''`:`';`,:':`::'.,,.''''.:.:.;;`;.;;`;`;;`'':.,.'`.;;'`;'':`;''',.;`',..,':.'''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''        :'''''''''''';`         `'''''''''''';`       `'''''''`;`,'...';`..'.``;''''.:`:`;'...''...''..':`,.';`.;;`;',.`;''''`.,':``.':`;''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''.........:'''''''''''''';:,,,;'''''''''''''';.````````.''''''''''''';'''';''.,'''''''''''''';'''';'''';''''''''''''''';''''''';'''''''';'''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.,'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
"
    end
  end
end