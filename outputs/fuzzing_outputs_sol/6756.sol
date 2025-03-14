pragma solidity ^0.8.0;
contract SecondFallbackMutator {
    function SecondMut() external {
        Mut(15);
        Mut(10);
        Mut(5);
        Mut(2);
        Mut(1);
        Mut(1);
        Mut(9);
    }
}
