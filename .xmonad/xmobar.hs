Config { font = "-*-Fixed-R-Normal-*-16-*-*-*-*-*-*-*"
        , borderColor = "black"
        , border = TopB
        , bgColor = "black"
        , fgColor = "grey"
        , position = Top
        , commands = [ Run Weather "YSSY" ["-t","<tempC>C","-L","18","-H","25","--normal","green","--high","red","--low","lightblue"] 36000
                     , Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10
                     , Run Memory ["-t","Mem: <usedratio>%"] 10
                     , Run Swap [] 10
                     , Run Com "~/.xmonad/volume.sh" [] "volume" 10
                     , Run Com "~/.xmonad/wireless.sh" [] "wireless" 50
                     , Run Date "%_d/%m/%Y %H:%M:%S" "date" 10
                     , Run StdinReader
                     ]
        , sepChar = "%"
        , alignSep = "}{"
        , template = "%StdinReader% | %cpu% | %memory%  %swap% | %volume% }{ <fc=#ee9a00>%date%</fc> | %wireless% | %YSSY% "
        }
