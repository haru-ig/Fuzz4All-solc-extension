pragma solidity ^0.8.0;
library Mutatation {
    int32[] c = new int32[](7);
    c[0] = -128;
    c[1] = int32(129);
    c[4] = 512;
    c[5] = int32(65535);
    c[6] = 86400;
    c[6] = -128;
}
