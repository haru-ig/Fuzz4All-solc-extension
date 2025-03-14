pragma solidity ^0.8.0;
contract Mutate  {
    bool mutatedBoolVar;
    uint mutatedUintVar;
    string mutatedStringVar;
    uint8 mutatedUByteVar;
    address mutatedAddressVar;
    address payable mutatedAddressVarAddress;
    address[] mutatedAddressesArrayVar;
    bytes32[5] mutatedBytes32ArrayVar;
    modifier test() {
        mutatedBoolVar = false;
        if(initBoolVar) { throw;}
        return test;
    }
}
contract Mutate2  {
    bool mutatedZeroBoolVar;
    uint mutatedUintZero2;
    string mutatedStringZero2;
    uint8 mutatedUByteZero2;
    address mutatedAddressZero2;
    address payable mutatedAddressZero2Address;
    address[] mutatedAddressZero2Array;
    bytes32[5] mutatedBytesZero2Array;
    modifier test() {
        mutatedZeroBoolVar = false;
        if(valueUintZero2) { throw;}
        if(initBoolVar) { throw;}
        return test;
    }
}
