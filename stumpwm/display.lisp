;; Window
(setf *window-border-style* :tight)
(setf *set-focus-color* "#00FFFF")

;; Modeline
(setf *window-format* "%m%n%s%c") ;; window
(setf *screen-mode-line-format* (list "%W^>%d"))
(setf *time-modeline-string* "%a %b %e %k:%M") ;; date

(setf *mode-line-position* :bottom)

(setf *mode-line-background-color* "#404040") 
(setf *mode-line-foreground-color* "#ececec")
(setf *mode-line-border-color* "#626262")

(setf *mode-line-timeout* 2)
(enable-mode-line (current-screen) (current-head) t)
