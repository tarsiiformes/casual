##
# Copyright 2024 Charles Y. Choi
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
include Makefile--defines.make

PACKAGE_NAME=casual-ibuffer
ELISP_INCLUDES=casual-ibuffer-utils.el		\
casual-ibuffer-settings.el
ELISP_PACKAGES=casual-ibuffer-filter.el
ELISP_TEST_INCLUDES=casual-ibuffer-test-utils.el
PACKAGE_PATHS=					\
-L $(EMACS_ELPA_DIR)/compat-current		\
-L $(EMACS_ELPA_DIR)/seq-current		\
-L $(EMACS_ELPA_DIR)/transient-current		\
-L $(CASUAL_LIB_LISP_DIR)

include Makefile--rules.make
