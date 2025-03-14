pragma solidity ^0.8.0;
contract Test39 {
    address[] internal arr = new address[](3);
    uint[] internal uintArray = new uint[](3);
    uint[] public uintArr = new uint[](3);
    constructor(){
        for (uint j = 0; j < 3; ++j) {
            arr[j] = address(0xffffffffffffffffffffffffff);
            uintArray[j] = 2**uint(8*(8+j));
            uintArr[j] = uintArray[j];
        }
    }
    modifier arrayLength(uint a) {
        require(a <= 3, "array length");
        _;
    }
}
