pragma solidity ^0.8.0;
contract Mutated_array is Array_mutatons {
    constructor(uint256 _a, uint256 _b, uint256 _c){
        base(10, 10, 10);
    }
    uint8 _a = 0;
    uint8 _b = 10;
    uint8 _c = 100;
    function base(uint8 _a, uint8 _b, uint8 _c) public {

    }


    function Mutate_array_from_base(uint8 _a, uint8 _b, uint8 _b_base) public {}
    function base(){}
}





pragma solidity ^0.8.0;
contract Array {
    uint[] private _array;
    uint256 _length;


    constructor(uint _length_) {
        _array[_length_] = uint(uint256(_length_));
        _array[_length_] = uint(uint256(0));
        _array[_length_] = uint(uint25
