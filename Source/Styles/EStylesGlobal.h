#pragma once
#include <QtCore/qglobal.h>

#ifndef QT_STATIC
#  if defined(EASYQUICK_STYLES_BUILD_LIB)
#    define EasyQuick_Styles Q_DECL_EXPORT
#  else
#    define EasyQuick_Styles Q_DECL_IMPORT
#  endif
#else
#  define EasyQuick_Styles
#endif
