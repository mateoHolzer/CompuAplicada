%%% This file is part of the dictionaries-common package.
%%% It has been automatically generated.
%%% DO NOT EDIT!

#ifexists aspell_add_dictionary
  if (_slang_utf8_ok) {
    aspell_add_dictionary (
      "castellano8",
      "castellano",
      "ñáàéèíìóòúùüÑÁÀÉÈÍÌÓÒÚÙÜ",
      "'",
      "-B");
  } else {
  aspell_add_dictionary (
    "castellano8",
    "castellano",
    "������������������������",
    "'",
    "-B");
  }
#endif

#ifexists ispell_add_dictionary
  ispell_add_dictionary (
    "castellano",
    "espa~nol",
    "��������������",
    "'",
    "~tex",
    "-B");
  ispell_add_dictionary (
    "castellano8",
    "espa~nol",
    "������������������������",
    "'",
    "~latin1",
    "-B");
#endif
