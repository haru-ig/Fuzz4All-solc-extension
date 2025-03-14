pragma solidity ^0.8.0;
contract Test73 {
    mapping(uint8 => bool) public table;
    mapping(uint8 => uint8) public value;

    function g() public {
        this.value[50] = table[50]? 0 : 1;
    }
}
