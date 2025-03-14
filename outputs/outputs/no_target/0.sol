pragma solidity ^0.8.0;



contract C {

function f(uint256) internal pure {
        require(msg.data <= 0x7FFF ether, "check");
}

function g() public pure {
        f(5);
}


}

contract D {

function f() internal pure {
        require(msg.data <= 0x7FFF ether, "check");
}


}
