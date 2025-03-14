pragma solidity ^0.8.0;
contract D {
    function f() public payable {
        payable(msg.sender).call(abi.encodePacked(address(this)));
    }
}
