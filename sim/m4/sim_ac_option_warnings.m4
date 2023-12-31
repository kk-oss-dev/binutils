dnl Copyright (C) 1997-2023 Free Software Foundation, Inc.
dnl
dnl This program is free software; you can redistribute it and/or modify
dnl it under the terms of the GNU General Public License as published by
dnl the Free Software Foundation; either version 3 of the License, or
dnl (at your option) any later version.
dnl
dnl This program is distributed in the hope that it will be useful,
dnl but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl GNU General Public License for more details.
dnl
dnl You should have received a copy of the GNU General Public License
dnl along with this program.  If not, see <http://www.gnu.org/licenses/>.
dnl
dnl --enable-build-warnings is for developers of the simulator.
dnl it enables extra GCC specific warnings.
AC_DEFUN([SIM_AC_OPTION_WARNINGS], [dnl
AC_ARG_ENABLE(werror,
  AS_HELP_STRING([--enable-werror], [treat compile warnings as errors]),
  [case "${enableval}" in
     yes | y) ERROR_ON_WARNING="yes" ;;
     no | n)  ERROR_ON_WARNING="no" ;;
     *) AC_MSG_ERROR(bad value ${enableval} for --enable-werror) ;;
   esac])

dnl Enable -Werror by default when using gcc.  Turn it off for releases.
if test "${GCC}" = yes -a -z "${ERROR_ON_WARNING}" && $development; then
  ERROR_ON_WARNING=yes
fi

WERROR_CFLAGS=""
if test "${ERROR_ON_WARNING}" = yes ; then
  WERROR_CFLAGS="-Werror"
fi

dnl The options we'll try to enable.
dnl NB: Kept somewhat in sync with gdbsupport/warnings.m4.
build_warnings="-Wall -Wpointer-arith
-Wno-unused -Wunused-value -Wunused-function
-Wno-switch -Wno-char-subscripts
-Wempty-body -Wunused-but-set-parameter
-Wno-sign-compare -Wno-error=maybe-uninitialized
dnl C++ -Wno-mismatched-tags
-Wno-error=deprecated-register
dnl C++ -Wsuggest-override
dnl C++ -Wdeprecated-copy
dnl C++ -Wdeprecated-copy-dtor
dnl C++ -Wredundant-move
-Wmissing-declarations
dnl C++ -Wstrict-null-sentinel
"
dnl Some extra warnings we use in the sim.
build_warnings="$build_warnings
-Wdeclaration-after-statement
-Wdeprecated-non-prototype
-Wimplicit-function-declaration
-Wimplicit-int
-Wincompatible-function-pointer-types
-Wincompatible-pointer-types
-Wmisleading-indentation
-Wmissing-parameter-type
-Wmissing-prototypes
-Wold-style-declaration
-Wold-style-definition
-Wpointer-sign
dnl The cgen virtual insn logic involves enum conversions.
dnl Disable until we can figure out how to make this work.
-Wno-enum-conversion
"

case "${host}" in
  *-*-mingw32*)
    # Enable -Wno-format by default when using gcc on mingw since many
    # GCC versions complain about %I64.
    build_warnings="$build_warnings -Wno-format" ;;
  *-*-solaris*)
    # Solaris 11.4 <python2.7/ceval.h> uses #pragma no_inline that GCC
    # doesn't understand.
    build_warnings="$build_warnings -Wno-unknown-pragmas"
    # Solaris 11 <unistd.h> marks vfork deprecated.
    build_warnings="$build_warnings -Wno-deprecated-declarations" ;;
  *)
    # Note that gcc requires -Wformat for -Wformat-nonliteral to work,
    # but there's a special case for this below.
    build_warnings="$build_warnings -Wformat-nonliteral" ;;
esac

AC_ARG_ENABLE(build-warnings,
AS_HELP_STRING([--enable-build-warnings], [enable build-time compiler warnings if gcc is used]),
[case "${enableval}" in
  yes)	;;
  no)	build_warnings="-w";;
  ,*)   t=`echo "${enableval}" | sed -e "s/,/ /g"`
        build_warnings="${build_warnings} ${t}";;
  *,)   t=`echo "${enableval}" | sed -e "s/,/ /g"`
        build_warnings="${t} ${build_warnings}";;
  *)    build_warnings=`echo "${enableval}" | sed -e "s/,/ /g"`;;
esac
if test x"$silent" != x"yes" && test x"$build_warnings" != x""; then
  echo "Setting compiler warning flags = $build_warnings" 6>&1
fi])dnl
AC_ARG_ENABLE(sim-build-warnings,
AS_HELP_STRING([--enable-sim-build-warnings], [enable SIM specific build-time compiler warnings if gcc is used]),
[case "${enableval}" in
  yes)	;;
  no)	build_warnings="-w";;
  ,*)   t=`echo "${enableval}" | sed -e "s/,/ /g"`
        build_warnings="${build_warnings} ${t}";;
  *,)   t=`echo "${enableval}" | sed -e "s/,/ /g"`
        build_warnings="${t} ${build_warnings}";;
  *)    build_warnings=`echo "${enableval}" | sed -e "s/,/ /g"`;;
esac
if test x"$silent" != x"yes" && test x"$build_warnings" != x""; then
  echo "Setting GDB specific compiler warning flags = $build_warnings" 6>&1
fi])dnl
WARN_CFLAGS=""
if test "x${build_warnings}" != x -a "x$GCC" = xyes
then
    AC_MSG_CHECKING(compiler warning flags)
    # Separate out the -Werror flag as some files just cannot be
    # compiled with it enabled.
    for w in ${build_warnings}; do
	# GCC does not complain about -Wno-unknown-warning.  Invert
	# and test -Wunknown-warning instead.
	case $w in
	-Wno-*)
		wtest=`echo $w | sed 's/-Wno-/-W/g'` ;;
        -Wformat-nonliteral)
		# gcc requires -Wformat before -Wformat-nonliteral
		# will work, so stick them together.
		w="-Wformat $w"
		wtest="$w"
		;;
	*)
		wtest=$w ;;
	esac

	case $w in
	-Werr*) WERROR_CFLAGS=-Werror ;;
	*)
	    # Check whether GCC accepts it.
	    saved_CFLAGS="$CFLAGS"
	    CFLAGS="$CFLAGS -Werror $wtest"
	    AC_TRY_COMPILE([],[],WARN_CFLAGS="${WARN_CFLAGS} $w",)
	    CFLAGS="$saved_CFLAGS"
	esac
    done
    AC_MSG_RESULT(${WARN_CFLAGS} ${WERROR_CFLAGS})
fi
])
AC_SUBST(WARN_CFLAGS)
AC_SUBST(WERROR_CFLAGS)
