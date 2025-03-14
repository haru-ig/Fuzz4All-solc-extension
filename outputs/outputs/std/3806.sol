pragma solidity ^0.8.0;
contract Array {
    function findMin(uint a[], uint k) public pure returns (uint) {
        uint min = a[0];
        for (uint i=1; i<k; i++) {
            if (a[i] < min) {
                min = a[i];
            }
        }
        return min;
    }
}
contract Convert {
    function fromUintToAddress(uint i) public pure returns(address addr) {
        addr=uint2address(i);
    }
}
contract Math {

    function add(uint x, uint y) public pure returns(uint z) {
        z = x+y;
    }
    function sub(uint x, uint y) public pure returns(uint z) {
        z = x-y;
    }
    function muld(uint x, uint y) public pure returns(uint z) {
        z = x*y;
    }
    function mule(uint x, uint y) public pure returns(uint z) {
        z = x*y;
    }
    function divd(uint x, uint y) public pure returns(uint z) {
        z = x/y;
    }
}
contract Memory {
    function readArray(uint addr) public pure returns(uint a[]) {
        uint[] memory memoryArray = new uint[](1);
        memoryArray[0] = addr;
        memoryArray.length = 1;
        return memoryArray;
    }
}
contract Multiprecision {
}
contract Random {
}
