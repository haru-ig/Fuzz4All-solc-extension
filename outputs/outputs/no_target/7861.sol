pragma solidity ^0.8.0;
contract TestMutator {
    function set(uint40 x) public {
        TestMutator testMutator;
        testMutator.set(x);
        x = 2;
   }
}
