pragma solidity ^0.8.0;
contract Mutator {
    uint[] public x;
    function testMethod(int v) public pure {
        x.push(v);
    }
}
contract AnotherMutator {
    uint[] public x;
    function testMethod(int v) public pure {
        x.push(v);
    }
}
contract AnotherInteriorMutator {
    uint[] public x;
    function testMethod(int v) public pure {
        x.push(v);
    }
}
contract MutatorCaller {
    Mutator x;

    function testMethod(int v) public pure {
        x.testMethod(v);
    }
}
contract AnotherMutatorCaller {
    AnotherMutator x;

    function testMethod(int v) public pure {
        x.testMethod(v);
    }
}
