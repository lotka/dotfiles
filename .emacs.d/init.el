;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,"~/.emacs_saves/")))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.emacs_saves/" t)))
