CATKIN_VERSION = 0.8.8
CATKIN_SITE = $(call github,ros,catkin,$(CATKIN_VERSION))
CATKIN_LICENSE = BSD-3-Clause
CATKIN_LICENSE_FILES = LICENSE
CATKIN_INSTALL_STAGING = YES
CATKIN_ROS_DIR = /opt/ros

HOST_CATKIN_DEPENDENCIES = host-python-catkin-pkg host-python-empy

HOST_CATKIN_CONF_OPTS += -DCMAKE_INSTALL_PREFIX=$(HOST_DIR)$(CATKIN_ROS_DIR)

HOST_CATKIN_MAKE_ENV += \
	_python_sysroot=$(STAGING_DIR) \
	_python_prefix=/usr \
	_python_exec_prefix=/usr \

# The toolchain file limited package search path(CMAKE_FIND_ROOT_PATH)
# to the staging dir.
define HOST_CATKIN_SYMLINK_STAGING
	$(INSTALL) -d $(STAGING_DIR)$(CATKIN_ROS_DIR)/share
	ln -sf $(HOST_DIR)$(CATKIN_ROS_DIR)/share/catkin $(STAGING_DIR)$(CATKIN_ROS_DIR)/share
endef

HOST_CATKIN_POST_INSTALL_HOOKS += HOST_CATKIN_SYMLINK_STAGING

$(eval $(host-cmake-package))
