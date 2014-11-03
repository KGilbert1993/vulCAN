FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/arbiter/msg"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/arbiter/msg/__init__.py"
  "../src/arbiter/msg/_frame.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
