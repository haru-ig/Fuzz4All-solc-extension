pragma solidity ^0.8.0;
contract sn {
    constructor() public {
        require (!check (0x1234), "fail");
        mapping(uint => bool) map;
        map[99] = false;
        map[0x1234] = true;
    }
    function check(uint x) public pure returns (bool) {
        return x > 0;
    }
}
