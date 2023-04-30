#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LCD_VERSION = 'e93ca0c7ee640390ecd86e449794c1247f08c5bb'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LCD_SITE = 'git@github.com:anuh7/final-project-assignment-anuh.git'
LCD_SITE_METHOD = git
LCD_GIT_SUBMODULES = YES

define LCD_BUILD_CMDS
         $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/LCD_TEST_CODE all
endef

define LCD_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/LCD_TEST_CODE/lcd $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))
