pragma solidity ^0.8.0;
contract Mutator {
    function testMethod(int v) public pure {
        v = v + 5;
        v++;
        v *= 4;
        if(false) v--;
    }
}
contract AnotherMutator {
    function testMethod(int v) public pure {
        v += 5;
    }
}
contract InteriorMutator {
    function testMethod(int v) public pure {
        v = v + 1;
        v = v / 3;
    }
}
