pragma solidity ^0.8.0;
contract Mutator {
    function testMethod(int v) public pure {
        v = v + 1;
    }
    function testMethod2() public pure {
        int memory r = 10;
        r = v + r;
    }
}
contract AnotherMutator {
    function testMethod(int v) public pure {
        v = v + 1;
    }
    function testMethod2() public pure {
        int memory r = 10;
        r = v + r;
    }
}
contract InteriorMutator {
    function testMethod(int v) public pure {
        v = v + 1;
    }
    function testMethod2() public pure {
        int memory r = 10;
        r = v + r;
    }
}
