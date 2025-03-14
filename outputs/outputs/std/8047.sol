pragma solidity ^0.8.0;
contract Array_mutatons{
    mapping(uint256 => uint) private intArray;
    uint256 private int;
    modifier Mutate_int(uint256 _a){
        int = _a;
        _;
        int;
        intArray;
        intArray;
        _;
    }
    function get_int(uint256 _a){
        int = _a;
        _;
        int;
        intArray;
        intArray;
    }
}
