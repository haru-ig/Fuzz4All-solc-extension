pragma solidity ^0.8.0;
contract C {
    uint[] a = [1];
    uint public v;
    address public a;
    constructor();
    function pushTest() public {
        a.push(2);
        v=1;
        a=msg.sender;
    }
}
