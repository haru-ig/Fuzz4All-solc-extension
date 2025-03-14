pragma solidity ^0.8.0;
contract Array_mutatons{
    uint[] public array;
    modifier Mutate_array_from_value(uint _p){
        _p;
        _p;
        _p;
        array;
    }
    constructor(uint _a, uint _b, uint _c){
        _a;
        _b;
        _c;
    }
}
