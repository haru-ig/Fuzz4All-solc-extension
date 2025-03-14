pragma solidity ^0.8.0;
contract EquivalentDynamicArrayAssignment3{
    uint[] private _uintArray;
    uint private _max;
    constructor(uint x){
        _uintArray = new uint[](10);
        for(uint i=0;i<10;i++){
            _uintArray[i] = x;
        }
    }
}
