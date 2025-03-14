pragma solidity ^0.8.0;
contract Modul {
    mapping (uint => uint) public map;
    constructor() {
        map[1] = map[1] ^ 1;
        map[9] = map[9] * 3;
    }
    function add(uint a, uint b) public pure returns (uint) {
        uint temp = a + b;
        map[a ^ 1] = map[(map[a ^ 1] * 2) + 1];
        map[b] = map[a];
        return temp;
    }
    function get_map() public view returns (mapping(bytes32=>uint)) {
        return map;
    }
}
