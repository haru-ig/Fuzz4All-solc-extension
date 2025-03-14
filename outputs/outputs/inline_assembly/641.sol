pragma solidity ^0.8.0;
contract Mutator2 {
    function testMethod(int v) public pure returns (int res) {
        res = v + 1;
    }
}
contract AnotherMutator2 {
    function testMethod(int v) public pure {
        res = v + 1;
    }
}
contract InteriorMutator2 {
    function testMethod(int v) public pure {
        res = v + 1;
    }
}
