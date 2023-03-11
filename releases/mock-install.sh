# Copyright (C) 2021-2023 by the FEM on Colab authors
#
# This file is part of FEM on Colab.
#
# SPDX-License-Identifier: MIT

set -e
set -x

# Check for existing installation
INSTALL_PREFIX=${INSTALL_PREFIX:-"/root/.local"}
INSTALL_PREFIX_DEPTH=$(echo $INSTALL_PREFIX | awk -F"/" '{print NF-1}')
PROJECT_NAME=${PROJECT_NAME:-"fem-on-kaggle"}
SHARE_PREFIX="$INSTALL_PREFIX/share/$PROJECT_NAME"
MOCK_INSTALLED="$SHARE_PREFIX/mock.installed"

if [[ ! -f $MOCK_INSTALLED ]]; then
    # Download and uncompress library archive
    MOCK_ARCHIVE_PATH=${MOCK_ARCHIVE_PATH:-"https://github.com/fem-on-kaggle/fem-on-kaggle/releases/download/mock-20230311-005947-fe393a5/mock-install.tar.gz"}
    [[ $MOCK_ARCHIVE_PATH == http* ]] && MOCK_ARCHIVE_DOWNLOAD=${MOCK_ARCHIVE_PATH} && MOCK_ARCHIVE_PATH=/tmp/mock-install.tar.gz && wget ${MOCK_ARCHIVE_DOWNLOAD} -O ${MOCK_ARCHIVE_PATH}
    if [[ $MOCK_ARCHIVE_PATH != skip ]]; then
        rm -rf /usr/lib/python*/*-packages/mock*
        rm -rf $INSTALL_PREFIX/lib/python*/*-packages/mock*
        tar -xzf $MOCK_ARCHIVE_PATH --strip-components=$INSTALL_PREFIX_DEPTH --directory=$INSTALL_PREFIX
    fi

    # Mark package as installed
    mkdir -p $SHARE_PREFIX
    touch $MOCK_INSTALLED
fi

# Display end user packages announcement
echo $MOCK_ANNOUNCEMENT_0
