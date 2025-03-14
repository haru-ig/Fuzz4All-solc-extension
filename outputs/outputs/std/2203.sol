pragma solidity ^0.8.0;
contract MutatedA {
    address[] foo;
    address xxx;
    function setFoo() public {
        foo.push(msg.sender);
    }
    function getFoo() public view returns (uint) {
        return foo.length;
    }
}
