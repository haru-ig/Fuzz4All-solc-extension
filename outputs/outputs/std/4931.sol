pragma solidity ^0.8.0;
contract Example {
    mapping(uint128 => uint128) public immutable mappingValue;
    uint8 public non_public_1;
    bool public non_public_2;
    uint[] public array;
    constructor() {
        mappingValue[1] = 1000;
        array.push(1);
        array.push(2);
        non_public_1 = 1;
        non_public_2 = true;
    }
    function hell() public pure returns (uint8) {
    }
}
