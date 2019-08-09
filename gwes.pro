# QMake file for building a CNS/ATM Gateway end system.

TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.cpp

INCLUDEPATH += $$(GW_ROOT)/src/include
DEPENDPATH += $$(GW_ROOT)/src/include

unix: LIBS += -L$$(GW_ROOT)/lib
unix: LIBS += -lES
unix: LIBS += -LGW

unix: PRE_TARGETDEPS += $$(GW_ROOT)/lib/libES.a
unix: PRE_TARGETDEPS += $$(GW_ROOT)/lib/libGW.a
