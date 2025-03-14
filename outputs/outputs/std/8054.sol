pragma solidity ^0.8.0;
contract Array_mutatons{
    uint _a;
    uint _b;
    uint _c;
    modifier Mutate_array_from_value(uint _param){
        _;
        _param;
        _param;
        _a;
        _b;
        _c;
    }
    constructor(uint256 _a, uint256 _b, uint256 _c){
        _a;
        _b;
        _c;
    }
}
