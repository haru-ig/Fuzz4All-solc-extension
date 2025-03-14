pragma solidity ^0.8.0;
contract Contract {
    function mutatedOperation() public view returns (uint) {
        uint x = getUintVariable();
        uint y = getUintVariable();
        uint z = x + y;
        return z;
    }
    function getUintVariable() public pure returns (uint) {
        return 1;
    }
    function getUintFromArray() public pure returns (uint) {
        uint [] memory a = getMemoryVariable();
        return a[0];
    }
    function getMemoryVariable() public pure returns (uint []) {
        uint memory z = getUintArray().length / 2;
        uint [] memory a = new uint[](z);
        return a;
    }
    function getUintArray() public pure returns (uint []){
        uint z = 0;
        uint [] memory a = new uint[](z);
        return a;
    }
}
