#pragma once
#include <QtCore/qglobal.h>

#ifndef QT_STATIC
#  if defined(EASYQUICK_CONTROLS_BUILD_LIB)
#    define EasyQuick_Controls Q_DECL_EXPORT
#  else
#    define EasyQuick_Controls Q_DECL_IMPORT
#  endif
#else
#  define EasyQuick_Controls
#endif
