pragma solidity ^0.8.0;
contract C {
    function f(address x) public pure {
        x.call{value: msg.value}("");
    }
    receive() external payable {}
}
