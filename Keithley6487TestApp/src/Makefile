TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Keithley6487Test
# Keithley6487Test.dbd will be created and installed
DBD += Keithley6487Test.dbd

# Keithley6487Test.dbd will be made up from these files:
Keithley6487Test_DBD += base.dbd

# Include dbd files from all support applications:
Keithley6487Test_DBD += stream.dbd
Keithley6487Test_DBD += asyn.dbd
Keithley6487Test_DBD += drvAsynIPPort.dbd

# Add all the support libraries needed by this IOC
Keithley6487Test_LIBS += stream
Keithley6487Test_LIBS += asyn

USR_SYS_LIBS += pcre

# Keithley6487Test_registerRecordDeviceDriver.cpp derives from Keithley6487Test.dbd
Keithley6487Test_SRCS += Keithley6487Test_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Keithley6487Test_SRCS_DEFAULT += Keithley6487TestMain.cpp
Keithley6487Test_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Keithley6487Test_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Keithley6487Test_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

