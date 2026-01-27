# Rice-till-skoldatorn
Denna kollektion av dotfiler och diverse konfigurations filer fungerar på skoldatorerna och ger en god användar upplevelse. Paketen som krävs behöver inte custom repos på gentoo eller arch/artix linux om en nvidia gpu ska användas behövs de stängda nvidia drivrutinerna.
  
  Installation instruktioner gentoo linux:
  Beroenden:
    Global USE="wayland elogind" (om systemd används behöver det endast vara USE="wayland").
    Waybar USE="tray pulseaudio network wifi".
    Dmenu (rekommenderas men wofi kan användas istället för en icke Xorg installation).
    Ubuntu-font-family
    Hyprland.
    Hyprlang.
    Hyprutils.
    Elogind (om du kör openrc eller något annat init system än systemd).
    Fontawesome.
    Iwctl (om wifi ska användas kan bytas ut till iw eller wpa_supplicant).
    Swaybg (om du vill ha ett wallpaper) USE="gdk-pixbuf".
    Wlroots.
    Acpilights.
    Sddm (eller annan loginmanager om användaren önskar att starta en grafisk användarmiljö efter boot).
    Alacritty (eller en annan terminal emulator, exempelvis st).
  Installation:
    Installera alla beroende (använd inte flatpaks eller liknande för detta!!).
    Kopiera githuben och spara den i en lämplig directory. 
    Kernel configs som behövs kommer inte att medföras utan kompetenta användare som vill kompliera och ändra sin kernel får sköta det själva, standard gentoo-kernel har alla configs som behövs. 
    Kopiera waybar dotfilerna till ~/.config/waybar/
    Kopiera hyprland dotfilerna till ~/.config/hypr/
    Kopiera alacritty dotfilerna till ~/.config/alacritty/
    Se till att alla beroenden ligger i path (om du inte vet vad det betyder behöver du inte bry dig om det).
    Om sddm eller annan login manager ska användas se till att servicen är startad.
    
  Installations instruktioner arch/artix linux:
  Beroenden:
    Waybar.
    Dmenu (rekommenderas men wofi kan användas istället för en icke Xorg installation).
    Ubuntu-font-family.
    Hyprland.
    Hyprlang. 
    Hyprutils.
    Elogind (om du kör openrc eller något annat init system än systemd).
    Fontawesome.
    Iwctl (om wifi ska användas kan bytas ut till iw eller wpa_supplicant).
    Swaybg (om du vill ha wallpapers).
    Wlroots.
    Acpilights.
    Sddm (eller annan loginmanager om användaren önskar att starta en grafisk användarmiljö efter boot).
    Alacritty (eller en annan terminal emulator, exempelvis st).
  Installation:
    Installera alla beroende (använd inte flatpaks eller liknande för detta!!).
    Kopiera githuben och spara den i en lämplig directory. 
    Kopiera waybar dotfilerna till ~/.config/waybar/
    Kopiera hyprland dotfilerna till ~/.config/hypr/
    Kopiera alacritty dotfilerna till ~/.config/alacritty/
    Se till att alla beroenden ligger i path (om du inte vet vad det betyder behöver du inte bry dig om det).
    Om sddm eller annan login manager ska användas se till att servicen är startad vid boot.


  
  
