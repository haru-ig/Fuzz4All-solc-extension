pragma solidity ^0.8.0;
contract Array_mutatons{
    uint256[] public array2;
    modifier Mutate_array_from_array2(uint256[] memory arrayOf3){
        _;
        arrayOf3;
        array2;
        array2;
        _;
    }
    constructor(uint256 _a, uint256 _b, uint256 _c){
        array2 = [_a, _b, _c];
    }
}
