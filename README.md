# Rice-till-skoldatorn
Denna kollektion av dotfiler och diverse konfigurations filer fungerar på skoldatorerna och ger en god användar upplevelse. Paketen behöver inte custom repos på gentoo eller arch/artix linux.
  
  Installations instruktioner gentoo linux:
  beroenden:
    global USE="wayland elogind" (om systemd används behöver det endast vara USE="wayland")
    waybar USE="tray pulseaudio network wifi"
    dmenu (rekommenderas men wofi kan användas istället för en icke Xorg installation)
    Ubuntu-font-family
    hyprland
    hyprlang 
    hyprutils
    elogind (om du kör openrc eller något annat init system än systemd)
    fontawesome 
    iwctl (om wifi ska användas kan bytas ut till iw eller wpa_supplicant)
    swaybg (om du vill ha ett wallpaper) USE="gdk-pixbuf"
    wlroots
    acpilights 
    sddm (eller annan loginmanager om användaren önskar att starta en grafisk användarmiljö efter boot)
    alacritty (eller en annan terminal emulator, exempelvis st)
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
    waybar
    dmenu (rekommenderas men wofi kan användas istället för en icke Xorg installation)
    Ubuntu-font-family
    hyprland
    hyprlang 
    hyprutils
    elogind (om du kör openrc eller något annat init system än systemd)
    fontawesome 
    iwctl (om wifi ska användas kan bytas ut till iw eller wpa_supplicant)
    swaybg (om du vill ha ett wallpaper)
    wlroots
    acpilights 
    sddm (eller annan loginmanager om användaren önskar att starta en grafisk användarmiljö efter boot)
    alacritty (eller en annan terminal emulator, exempelvis st)
  Installation:
    Installera alla beroende (använd inte flatpaks eller liknande för detta!!).
    Kopiera githuben och spara den i en lämplig directory. 
    Kopiera waybar dotfilerna till ~/.config/waybar/
    Kopiera hyprland dotfilerna till ~/.config/hypr/
    Kopiera alacritty dotfilerna till ~/.config/alacritty/
    Se till att alla beroenden ligger i path (om du inte vet vad det betyder behöver du inte bry dig om det).
    Om sddm eller annan login manager ska användas se till att servicen är startad.

  
  
