pragma solidity ^0.8.0;
contract newMutableStorageMut{
    uint constant a = 7;
    uint constant b = a;
    constructor(uint _b){
        b = _b;
    }
    function test(){}
}
