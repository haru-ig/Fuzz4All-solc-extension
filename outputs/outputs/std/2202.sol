pragma solidity ^0.8.0;
contract MutatedS {
    event Emit(bytes32 e);
    function setFoo() public {
        Emit("foo");
    }
}
