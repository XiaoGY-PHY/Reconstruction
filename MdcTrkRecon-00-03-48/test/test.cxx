#include <iostream>
#include <dlfcn.h>
#include "MdcTrkRecon/MdcSegPatterns.h"

int main() {
    using std::cout;
    using std::cerr;

    cout << "C++ dlopen demo\n\n";

    // open the library
    cout << "Opening MdcTrkRecon.so...\n";
    void* handle = dlopen("../rh73_gcc32/libMdcTrkRecon.so", RTLD_LAZY);
    
    if (!handle) {
        cerr << "Cannot open library: " << dlerror() << '\n';
        return 1;
    }
   
    MdcSegPatterns pat(true);
    for(int j=0;j<20;j++)std::cout<<pat.patt3[j]<<" "<<j<<std::endl;
    for(int i=0;i<256;i++){
       std::cout<<pat.npatt4[i]<<" "<<pat.npatt3[i]<<" "<<i<<std::endl; 
    }
/*    // load the symbol
    cout << "Loading symbol hello...\n";
    typedef void (*hello_t)();
    hello_t hello = (hello_t) dlsym(handle, "hello");
    if (!hello) {
        cerr << "Cannot load symbol 'hello': " << dlerror() <<
            '\n';
        dlclose(handle);
        return 1;
    }
    
    // use it to do the calculation
    cout << "Calling hello...\n";
    hello();
*/    
    // close the library
    cout << "Closing library...\n";
    dlclose(handle);
}

