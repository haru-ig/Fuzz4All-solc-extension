pragma solidity ^0.8.0;
contract Main {
    mapping(address => bool) public blackboxes;
    mapping(address => mapping(uint => uint)) public blackboxMapping;
    constructor () { blackboxes[msg.sender] = true;}
    struct Struct {
        uint256 a;
        uint b;
    }
    function testStorageChange () public {
        Struct memory s = Struct(0, 0);
        for (uint i = 0; i < 10; i++) {
            blackboxMapping[msg.sender][i-9].a = s.a + 1;
            blackboxMapping[msg.sender][i-9].b = s.b + 1;
            blackboxes[msg.sender] = true;
        }
    }
}
