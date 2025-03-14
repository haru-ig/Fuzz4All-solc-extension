pragma solidity ^0.8.0;
contract EquivalentDynamicArrayAssignment3 is EquivalentDynamicArrayAssignment2{
    uint[] private _uintArray1;
    uint[] private _uintArray2 { default: _uintArray1 };
}
