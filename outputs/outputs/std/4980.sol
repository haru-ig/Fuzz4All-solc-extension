pragma solidity ^0.8.0;
contract MutatedWithContracts {

    EquivalentMutated x = (new EquivalentMutated())();
    EquivalentMutated y = (new EquivalentMutated())();

    function test() public {
        uint a = x._increment();
        uuint16 b;
        uint c = b.increment();

    }
}
