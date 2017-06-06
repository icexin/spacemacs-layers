(defconst rtags-packages
  '(rtags
    helm-rtags
    ))

(defun rtags/setup-keys ()
  (spacemacs/set-leader-keys "ors" 'rtags-find-symbol-at-point)
  (spacemacs/set-leader-keys "orS" 'rtags-find-symbol)
  (spacemacs/set-leader-keys "orr" 'rtags-find-references-at-point)
  (spacemacs/set-leader-keys "orR" 'rtags-find-references))

(defun rtags/init-rtags ()
  (use-package rtags
    :config
    (setq rtags-display-result-backend 'helm)
    (rtags/setup-keys)))

(defun rtags/init-helm-rtags ()
  (use-package helm-rtags))
