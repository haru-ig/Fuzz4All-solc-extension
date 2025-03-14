pragma solidity ^0.8.0;
library lib2 {
    function use(uint[] calldata v) {
        uint c = 1;
        for (uint i = 0; i < v.length; i++) {
            c = 3*c + v[i];
        }
    }
}
