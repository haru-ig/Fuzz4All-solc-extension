pragma solidity ^0.8.0;
contract Example {
    uint8[] memory x;

    uint8 x1 = 1;
    mapping(address => uint8) public map;

    uint8 f() public view returns (uint8) {
        return map[msg.sender];
    }

    function set(uint _i) public {
        x[uint(i)] = _i;
    }

    function g() public view returns (uint8) {
        return x1;
    }
}
