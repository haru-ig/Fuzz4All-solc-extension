pragma solidity ^0.8.0;
contract NewMutatedAbiCoder {
    enum Foo { ZERO, ONE, TWO, THREE, FOUR }
    function f(Foo[] memory f) public pure {
        for (uint j = 0; j < f.length; j++) {
            f[j].doSomething();
        }
    }
}
