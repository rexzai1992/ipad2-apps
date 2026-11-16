# Build a normal iOS APP (.ipa) for the iPad 2 (iOS 9.3.5, 32-bit armv7).
# No jailbreak needed - this installs with Sideloadly.
TARGET := iphone:clang:10.3:9.0
ARCHS := armv7

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = HelloIPad2

HelloIPad2_FILES = $(wildcard src/*.m)
HelloIPad2_FRAMEWORKS = UIKit CoreGraphics AVFoundation
HelloIPad2_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/application.mk
