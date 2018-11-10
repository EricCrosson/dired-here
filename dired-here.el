;;; dired-here.el --- Open Dired-buffer of directory containing current buffer-file
;;
;;; Copyright (C) 2018  Free Software Foundation, Inc.
;;
;; Author: Eric Crosson <eric.s.crosson@utexas.com>
;; Version: 1.0.0
;; Keywords: convenience
;; URL: https://github.com/EricCrosson/dired-here
;; Package-Requires: ((emacs "24"))
;;
;; This file is not a part of GNU Emacs.
;;
;;
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;
;;
;;; Commentary:
;;
;; This package provides `dired-here' to open a Dired buffer of the
;; directory containing the current buffer-file, without prompting the
;; user for any information.  `dired-here' will open a dired buffer or
;; fail with a message in the minibuffer.
;;
;; I bind `dired-here' via `evil-leader'
;;
;; (use-package dired-here
;;   :quelpa (dired-here
;;            :fetcher github
;;            :repo "EricCrosson/dired-here")
;;   :after (evil-leader)
;;   :config (evil-leader/set-key "d" 'dired-here))
;;
;; although it can be bound without `evil-leader'
;;
;; (define-key (kbd "C-c d") 'dired-here)


;;; Code:

;;;###autoload
(defun dired-here ()
  "Open `dired' buffer of directory containing current buffer-file."
  (interactive)
   (let ((cwd (file-name-directory (or (buffer-file-name) ""))))
     (cond
      ((and cwd (file-exists-p cwd))
       (dired cwd))
      (t
       (message "I'm not sure which dir to view.")))))


(provide 'dired-here)

;;; dired-here.el ends here
