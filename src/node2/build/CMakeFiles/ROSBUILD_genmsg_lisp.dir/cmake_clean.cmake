FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/node2/msg"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/frame.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_frame.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
