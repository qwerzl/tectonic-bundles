git clone https://github.com/tectonic-typesetting/tectonic
cd tectonic/bundles/bundles

cd $1
wget $2
unxz ./*xz

cd ..
tectonic -X bundle create --build-dir ./build $1/bundle.toml v1 --job select || mv ./build/$1/* ./build
tectonic -X bundle create --build-dir ./build $1/bundle.toml v1

echo ".ttb bundle is located at: $(pwd)/build/$1/$1.ttb"
