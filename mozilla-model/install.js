var err = initInstall("PACAISTE", "MYLOCALEHYPH@dictionaries.addons.mozilla.org", "LEAGAN");
if (err != SUCCESS)
    cancelInstall();

var fProgram = getFolder("Program");
err = addDirectory("", "MYLOCALEHYPH@dictionaries.addons.mozilla.org",
		   "dictionaries", fProgram, "dictionaries", true);
if (err != SUCCESS)
    cancelInstall();

performInstall();
