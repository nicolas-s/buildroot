################################################################################
#
# python-empy
#
################################################################################

PYTHON_EMPY_VERSION = 3.3.4
PYTHON_EMPY_SOURCE = empy-$(PYTHON_EMPY_VERSION).tar.gz
PYTHON_EMPY_SITE = https://files.pythonhosted.org/packages/3b/95/88ed47cb7da88569a78b7d6fb9420298df7e99997810c844a924d96d3c08
PYTHON_EMPY_SETUP_TYPE = distutils
PYTHON_EMPY_LICENSE = LGPL-2.1
PYTHON_EMPY_LICENSE_FILES = COPYING

$(eval $(python-package))
$(eval $(host-python-package))
