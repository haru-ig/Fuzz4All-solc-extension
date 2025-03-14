pragma solidity ^0.8.0;
contract Test19 {
    mapping(uint => mapping(uint => uint)) public map;

    constructor () public {
        map[1][2] = 7;
        array = new uint[](8){4,5};
    }
}
