# - Find TBB
# Find the TBB includes and libraries.
#
#  TBB_INCLUDE_DIR    - where to find tbb.h
#  TBB_LIBRARIES      - List of libraries when using TBB.
#  FFTW_FOUND         - True if TBB found.

find_path (TBB_INCLUDE_DIR tbb/)
find_library (TBB_LIBRARIES NAMES tbb)

mark_as_advanced (TBB_INCLUDE_DIR TBB_LIBRARIES)