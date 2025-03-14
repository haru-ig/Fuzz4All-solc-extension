pragma solidity ^0.8.0;
contract MutationTest {
    function callMyArrayAddress(SemanticTest memory s) public {
        s.myArrayAddress[1] = address(this);
        s.myArrayAddress[s.lastIndex] = address(this);
    }
}
