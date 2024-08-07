# Autogenerated wrapper script for Osi_jll for x86_64-linux-musl-cxx11
export libOsi, libOsiCommonTests

using CoinUtils_jll
using libblastrampoline_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("Osi")
JLLWrappers.@declare_library_product(libOsi, "libOsi.so.1")
JLLWrappers.@declare_library_product(libOsiCommonTests, "libOsiCommonTests.so.1")
function __init__()
    JLLWrappers.@generate_init_header(CoinUtils_jll, libblastrampoline_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libOsi,
        "lib/libOsi.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libOsiCommonTests,
        "lib/libOsiCommonTests.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
