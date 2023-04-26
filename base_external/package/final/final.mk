#TODO: Fill up the contents below in order to reference your assignment 3 git contents
FINAL_VERSION = 'c2a8362e25d126c32575ea0b4dd0a53ff4d501a2'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
FINAL_SITE = 'git@github.com:anuh7/final-project-assignment-anuh.git'
FINAL_SITE_METHOD = git
FINAL_GIT_SUBMODULES = YES

define FINAL_BUILD_CMDS
	 $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/client all
	  $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

define FINAL_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/client/client $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/server/server $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))
