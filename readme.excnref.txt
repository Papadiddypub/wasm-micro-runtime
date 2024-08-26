 2060  grep FAST build-scripts/config_common.cmake 
 2061  grep EXCE build-scripts/config_common.cmake
 2062  cmake -B build -DWAMR_BUILD_EXCE_HANDLING=1 -DWAMR_BUILD_FAST_INTERP=0 product-mini/platforms/linux
 2063  cmake --build build -j 4
 2064  wat2wasm ---enable-exceptions t_42.wat 
 2065  wat2wasm --enable-exceptions t_42.wat 
 2066  wasm-objdump -t t_42.wasm
 2067  wasm-objdump  t_42.wasm
 2068  wasm-objdump -d  t_42.wasm
 2069  ./build/iwasm --repl t_42.wasm
 2076  ./build/iwasm --function throw2  t_42.wasm 1
 2077  ./build/iwasm --function divzero  t_42.wasm 1
