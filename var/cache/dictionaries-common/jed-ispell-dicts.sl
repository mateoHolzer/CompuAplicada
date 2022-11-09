%%% This file is part of the dictionaries-common package.
%%% It has been automatically generated.
%%% DO NOT EDIT!

#ifexists aspell_add_dictionary
  if (_slang_utf8_ok) {
    aspell_add_dictionary (
      "castellano8",
      "castellano",
      "Ã±Ã¡Ã Ã©Ã¨Ã­Ã¬Ã³Ã²ÃºÃ¹Ã¼Ã‘ÃÃ€Ã‰ÃˆÃÃŒÃ“Ã’ÃšÃ™Ãœ",
      "'",
      "-B");
  } else {
  aspell_add_dictionary (
    "castellano8",
    "castellano",
    "ñáàéèíìóòúùüÑÁÀÉÈÍÌÓÒÚÙÜ",
    "'",
    "-B");
  }
#endif

#ifexists ispell_add_dictionary
  ispell_add_dictionary (
    "castellano",
    "espa~nol",
    "áéíñóúüÁÉÍÑÓÚÜ",
    "'",
    "~tex",
    "-B");
  ispell_add_dictionary (
    "castellano8",
    "espa~nol",
    "ñáàéèíìóòúùüÑÁÀÉÈÍÌÓÒÚÙÜ",
    "'",
    "~latin1",
    "-B");
#endif
