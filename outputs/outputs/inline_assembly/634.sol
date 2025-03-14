pragma solidity ^0.8.0;
contract Mutator {
    function testMethod(int v) public pure {
        v = v + 1;
    }
}
contract AnotherMutator {
    function testMethod(int v) public pure {
        v = v + 1;
    }
}
contract InteriorMutator {
    function testMethod(int v) public pure {
        v = v * 2;
    }
}
