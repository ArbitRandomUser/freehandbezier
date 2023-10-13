clang main.c -nostdlib  -c --target=wasm32 -o out.wasm -O2 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -mbulk-memory -fplugin=/usr/lib/ClangEnzyme-16.so
wasm-ld --no-entry --export-all -zstack-size=8388608 out.wasm -o outf.wasm
rm ../public/outf.wasm
cp outf.wasm ../public/
