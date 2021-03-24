################################################################################
#
# python-catkin-pkg
#
################################################################################

PYTHON_CATKIN_PKG_VERSION = 0.4.23
PYTHON_CATKIN_PKG_SOURCE = catkin_pkg-$(PYTHON_CATKIN_PKG_VERSION).tar.gz
PYTHON_CATKIN_PKG_SITE = https://files.pythonhosted.org/packages/8e/79/cd55f44d94d67b57924b148f17612f1dc6d9e5fc9c0dc35867f7caefdb6a
PYTHON_CATKIN_PKG_SETUP_TYPE = setuptools
PYTHON_CATKIN_PKG_LICENSE = BSD-3-Clause
HOST_PYTHON_CATKIN_PKG_DEPENDENCIES = host-python-dateutil host-python-docutils host-python-pyparsing

$(eval $(host-python-package))
