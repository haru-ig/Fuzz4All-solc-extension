pragma solidity ^0.8.0;
contract SemanticTest10 {
    uint[] public value1;
    uint[] public value2;
    uint[] public value3;
    constructor () public {
        for (uint i = 0; i < 10; i += 1) {
            uint j = i;
            if (j < value1.length) {
                value1[j] += 10;
            }
            if (j < value2.length) {
                value2[j] += 20;
            }
            if (j < value3.length) {
                value3[j] += 30;
            }
        }
    }
    function getSlotValue(uint i) public view returns (uint) {
        uint ret;
        if (i < value1.length) {
            ret = value1[i];
        } else {
            ret = uint(-1);
        }
        return ret;
    }
    function setSlotValue(uint i, uint v) onlyOwner public {
        if (i < value1.length) {
            value1[i] = v;
        } else {
            uint j;
            uint k;
            uint l;
            uint m;
            uint n;
            uint o;
            uint p;
            uint q;
            uint r;
            uint s;
            uint t;
            uint u;
            uint v;
            uint w;
            uint x;
            uint y;
            uint z;
            uint A;
            if (i < (value1.length - 1)) {
                j = i;
                k = 0
