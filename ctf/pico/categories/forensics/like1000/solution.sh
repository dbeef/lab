#!/bin/bash

wget https://jupiter.challenges.picoctf.org/static/52084b5ad360b25f9af83933114324e0/1000.tar

for i in {1000..0}
do
    tar -xf $i.tar
done


