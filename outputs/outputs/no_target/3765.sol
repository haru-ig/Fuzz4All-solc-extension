pragma solidity ^0.8.0;
contract E2 {
    address a;
    bytes32 b;
    uint256 c;
    bytes32 d;
    uint256 e;
    constructor(address addr) public {
        a = msg.sender;
        b = 'foo';
        c = 1;
        d = bytes32(c);
        e = bytes32(~c);
    }
    function h() public {
    }
    function i() public {
    }
}
