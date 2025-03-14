pragma solidity ^0.8.0;
contract DynamicArraysV3 {
    uint256[1] z;
    uint[1] zz;
    function g(uint x) public view {

        x += 55;
        for (uint i = 0; i < 55; ++i) {
            z[x - i];
        }
    }
}
contract DynamicArraysV4 {
    address[] a;
    function f(uint x) public view {
        for (uint i = 0; i < 55; ++i) {
            a[x - i];
            z[x - i];
        }
    }
}
contract DynamicArraysV5 {
    address[1] arr;
    uint[1] vec;
    function f(uint x) public view {
        for(uint j = 0; j < 55; ++j) arr[j] = a[x - j];
        for (uint i = 0; i < 55; ++i) vec[x + i] = zz[x - x];
    }
}
