# Rice-till-skoldatorn
Denna kollektion av dotfiler och diverse konfigurations filer fungerar på skoldatorerna och ger en god användar upplevelse. Paketen som krävs behöver inte custom repos på gentoo eller arch/artix linux. Om en nvidia gpu ska användas behövs de stängda nvidia drivrutinerna (open-kernel driverutinen och stängd-kernel drivrutinen fungerar och open-kernel drivrutinen rekommenderas för ampere och turing arkitekturerna) den behöver också vara modeset=1 vilket kommer by default, annars fungerar opensource drivrutiner för intel amd och diverse andra grafikkort som supportar wayland (ungefär allt gjort efter 2008). Waybar konfigurationen är en fork av användarna "TheFrankyDoll" och "user18130814200115-2" projekt https://github.com/TheFrankyDoll/win10-style-waybar. Installer scripten bör inte användas i nuläget!
  
## Installation instruktioner gentoo linux:
### Beroenden:
Global USE="wayland elogind" (om systemd används behöver det endast vara USE="wayland").\
Waybar USE="tray pulseaudio network wifi".\
Dmenu (rekommenderas men wofi kan användas istället för en icke Xorg installation).\
Ubuntu-font-family\
Hyprland.\
Hyprlang.\
Hyprutils.\
Elogind (om du kör openrc).\
Fontawesome.\
Iwctl (om wifi ska användas kan bytas ut till iw eller wpa_supplicant).\
Swaybg (om du vill ha wallpapers) USE="gdk-pixbuf".\
Wlroots.\
Xcursor-themes.\
Acpilights.\
Sddm (eller en annan loginmanager om man vill automatiskt starta ett grafisk gränssnitt efter start).\
Alacritty (eller en annan terminal emulator, exempelvis st).
### Installation:
Installera alla beroende (använd inte flatpaks eller liknande för detta!!).\
Kopiera githuben och spara den i en lämplig directory.\
Kernel configs som behövs kommer inte att medföras utan kompetenta användare som vill kompliera och ändra sin kernel får sköta det själva, standard gentoo-kernel har alla configs som behövs.\
Kopiera waybar dotfilerna till ~/.config/waybar/\
Kopiera hyprland dotfilerna till ~/.config/hypr/\
Kopiera alacritty dotfilerna till ~/.config/alacritty/\
Se till att alla beroenden ligger i path (om du inte vet vad det betyder behöver du inte bry dig om det).\
Om sddm eller annan login manager ska användas se till att servicen är startad.
'''
emerge --ask --verbose waybar dmenu ubuntu-font-family hyprland hyprlang hyprutils elogind fontawesome iwctl swaybg wlroots xcursor-themes acpilights alacritty sddm\
git clone https://github.com/WarnholtzS/Rice-till-skoldatorn.git\
mv config style.css ~/.config/waybar/\
mv hyprland.conf ~/.config/hypr/\
mv alacritty.toml ~/.config/alacritty/\
rc-update add sddm default\
'''


  

## Installations instruktioner arch/artix linux:
### Beroenden:
Waybar.\
Dmenu (rekommenderas men wofi kan användas istället för en icke Xorg installation).\
Ubuntu-font-family.\
Hyprland.\
Hyprlang.\
Hyprutils.\
Elogind (om du kör openrc).\
Fontawesome.\
Iwctl (om wifi ska användas kan bytas ut till iw eller wpa_supplicant).\
Swaybg (om du vill ha wallpapers).\
Wlroots.\
Acpilights.\
Sddm (eller en annan loginmanager om man vill automatiskt starta ett grafisk gränssnitt efter start).\
Alacritty (eller en annan terminal emulator, exempelvis st).
### Installation:
Installera alla beroende (använd inte flatpaks eller liknande för detta!!).\
  pacman -S waybar dmenu ubuntu-font-family hyprland hyprlang hyprutils elogind fontawesome iwctl swaybg wlroots xcursor-themes acpilights alacritty sddm\
Kopiera githuben och spara den i en lämplig directory. \
  git clone https://github.com/WarnholtzS/Rice-till-skoldatorn.git\
Kopiera waybar dotfilerna till ~/.config/waybar/\
  mv config style.css ~/.config/waybar/\
Kopiera hyprland dotfilerna till ~/.config/hypr/\
  mv hyprland.conf ~/.config/hypr/\
Kopiera alacritty dotfilerna till ~/.config/alacritty/\
  mv alacritty.toml ~/.config/alacritty/\
Se till att alla beroenden ligger i path (om du inte vet vad det betyder behöver du inte bry dig om det).\
Om sddm eller annan login manager ska användas se till att servicen är startad vid boot.
  systemctl enable sddm\


  
  
