pragma solidity ^0.8.0;
interface i {
    function m();
    function n() external {
        i self = msg.sender;
        self.m();
    }
}
