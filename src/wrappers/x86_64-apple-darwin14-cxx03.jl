# Autogenerated wrapper script for Osi_jll for x86_64-apple-darwin14-cxx03
export libOsiCommonTests, libOsi

using CoinUtils_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"

# Relative path to `libOsiCommonTests`
const libOsiCommonTests_splitpath = ["lib", "libOsiCommonTests.1.12.9.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libOsiCommonTests_path = ""

# libOsiCommonTests-specific global declaration
# This will be filled out by __init__()
libOsiCommonTests_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libOsiCommonTests = "@rpath/libOsiCommonTests.1.dylib"


# Relative path to `libOsi`
const libOsi_splitpath = ["lib", "libOsi.1.12.9.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libOsi_path = ""

# libOsi-specific global declaration
# This will be filled out by __init__()
libOsi_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libOsi = "@rpath/libOsi.1.dylib"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Osi")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (CoinUtils_jll.PATH_list, OpenBLAS32_jll.PATH_list, CompilerSupportLibraries_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (CoinUtils_jll.LIBPATH_list, OpenBLAS32_jll.LIBPATH_list, CompilerSupportLibraries_jll.LIBPATH_list,))

    global libOsiCommonTests_path = normpath(joinpath(artifact_dir, libOsiCommonTests_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libOsiCommonTests_handle = dlopen(libOsiCommonTests_path)
    push!(LIBPATH_list, dirname(libOsiCommonTests_path))

    global libOsi_path = normpath(joinpath(artifact_dir, libOsi_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libOsi_handle = dlopen(libOsi_path)
    push!(LIBPATH_list, dirname(libOsi_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

