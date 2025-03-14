pragma solidity ^0.8.0;
contract BetterCase12 {
    address[] private x;
    function f() public {
        x.push(msg.sender);
    }
}
