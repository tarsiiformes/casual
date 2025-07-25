;;; test-casual-info-settings.el --- Casual Info Settings Tests  -*- lexical-binding: t; -*-

;; Copyright (C) 2024-2025  Charles Y. Choi

;; Author: Charles Choi <kickingvegas@gmail.com>
;; Keywords: tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(require 'ert)
(require 'casual-lib-test-utils)
(require 'casual-info-test-utils)
(require 'casual-info-settings)

(ert-deftest test-casual-info-settings-tmenu ()
  (let ()
    (casualt-info-setup)
    (cl-letf ((casualt-mock #'casual-info--customize-info-group)
              (casualt-mock #'casual-info--customize-info-hide-note-references)
              (casualt-mock #'casual-info--customize-info-additional-directory-list)
              (casualt-mock #'casual-info--customize-info-isearch-search)
              (casualt-mock #'casual-info--customize-info-scroll-prefer-subnodes)
              (casualt-mock #'casual-info-about))

      (let ((test-vectors
             '((:binding "h" :command casual-info--customize-info-hide-note-references)
               (:binding "A" :command casual-info--customize-info-additional-directory-list)
               (:binding "i" :command casual-info--customize-info-isearch-search)
               (:binding "c" :command casual-info--customize-info-scroll-prefer-subnodes)
               (:binding "G" :command casual-info--customize-info-group)
               (:binding "a" :command casual-info-about))))

        (casualt-suffix-testcase-runner test-vectors
                                        #'casual-info-settings-tmenu
                                        '(lambda () (random 5000)))))
    (casualt-info-breakdown)))

(provide 'test-casual-info-settings)
;;; test-casual-info-setttings.el ends here
