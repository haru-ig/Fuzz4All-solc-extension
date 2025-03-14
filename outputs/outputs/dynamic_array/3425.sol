pragma solidity ^0.8.0;
contract C {
    function pushTest() public {
        C c;
        c.array.push(2);
        c.v=2;
        c.a=msg.sender;
    }
}
