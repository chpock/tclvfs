###
# This file is loaded by the tool object
###

###
# Add in the C Code
###
my add {
  shed_class: package
  name: vfs
  class: binary
  version: 1.4.2
  sources: {generic/vfs.c}
  init: Vfs_Init
}

###
# Build the module section
###
foreach path [glob [file join $::TOOL_ROOT library *]] {
  my scan $path
}
