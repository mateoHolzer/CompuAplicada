;;; This file is part of the dictionaries-common package.
;;; It has been automatically generated.
;;; DO NOT EDIT!

;; Adding aspell dicts

(add-to-list 'debian-aspell-only-dictionary-alist
  '("castellano8"
     "[a-z\340\341\350\351\354\355\362\363\371\372\374\347\361A-Z\300\301\310\311\314\315\322\323\331\332\334\307\321]"
     "[^a-z\340\341\350\351\354\355\362\363\371\372\374\347\361A-Z\300\301\310\311\314\315\322\323\331\332\334\307\321]"
     "[']"
     nil
     ("-B" "-d" "castellano")
     "~latin1"
     iso-8859-1))


;; Adding ispell dicts

(add-to-list 'debian-ispell-only-dictionary-alist
  '("castellano8"
     "[a-z\340\341\350\351\354\355\362\363\371\372\374\347\361A-Z\300\301\310\311\314\315\322\323\331\332\334\307\321]"
     "[^a-z\340\341\350\351\354\355\362\363\371\372\374\347\361A-Z\300\301\310\311\314\315\322\323\331\332\334\307\321]"
     "[']"
     nil
     ("-B" "-d" "espa~nol")
     "~latin1"
     iso-8859-1))
(add-to-list 'debian-ispell-only-dictionary-alist
  '("castellano"
     "[a-z\301\311\315\321\323\332\334A-Z\341\351\355\361\363\372\374]"
     "[^a-z\301\311\315\321\323\332\334A-Z\341\351\355\361\363\372\374]"
     "[']"
     nil
     ("-B" "-d" "espa~nol")
     "~tex"
     iso-8859-1))



;; An alist that will try to map aspell locales to emacsen names

(setq debian-aspell-equivs-alist '(
     ("es" "castellano8")
     ("es_ES" "castellano8")
))

;; Get default value for debian-aspell-dictionary. Will be used if
;; spellchecker is aspell and ispell-local-dictionary is not set.
;; We need to get it here, after debian-aspell-equivs-alist is loaded

(setq debian-aspell-dictionary (debian-ispell-get-aspell-default))



;; No emacsen-hunspell-equivs entries were found
