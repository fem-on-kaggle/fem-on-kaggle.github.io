# Copyright (C) 2021-2024 by the FEM on Colab authors
#
# This file is part of FEM on Colab.
#
# SPDX-License-Identifier: MIT

# Use a mock package to keep track of how many users are still trying to download NGSolve from the legacy URL
wget -O/dev/null -q https://github.com/fem-on-kaggle/fem-on-kaggle/releases/download/mock-20240111-171946-9b9a7aa/mock-install.tar.gz

cat << EOF




























################################################################################
#                                                                              #
#           The installation script for ngsolve has been moved from            #
#        https://fem-on-kaggle.github.io/releases/ngsolve-install.sh           #
#                                      to                                      #
#      https://fem-on-kaggle.github.io/releases/ngsolve-install-real.sh        #
#                   (note the additional "-real" in the URL).                  #
#                                                                              #
#   Please update your installation cell. Report issues at our issue tracker   #
#           https://github.com/fem-on-kaggle/fem-on-kaggle/issues              #
#                                                                              #
################################################################################




























EOF
sleep 2; kill -9 `ps --pid $$ -oppid=`; exit
