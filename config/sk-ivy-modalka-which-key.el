;;; sk-ivy-modalka-which-key.el --- Global settings -*- lexical-binding: t; -*-

;;; Commentary:

;; Which key explanations for bindings in sk-ivy-modalka.el

;;; Code:

(which-key-add-key-based-replacements
  "B" "ivy resume"
  "t" "imenu"
  "SPC R" "locate/spotlight"
  "SPC j" "helm M x"
  "SPC x" "desc function"
  "SPC v" "desc variable"

  "g e" "wgrep mode"

  "SPC r" "spotlight"

  "SPC d" "projectile"

  "SPC p" "counsel projectile"

  "SPC b" "ivy bibtex"

  "SPC ," "ivy descbinds"
  )

(provide 'sk-ivy-modalka-which-key)
;;; sk-ivy-modalka-which-key.el ends here
