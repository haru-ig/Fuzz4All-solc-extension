pragma solidity ^0.8.0;
contract MutatorMut {
    function Mut(uint a) public {
        Mut(a);
    }
}
contract MutatorMutFallback {
    function mutate() public {
        MutatorMut m1 = new MutatorMut();
        m1.Mut(0);
        MutatorMut m2 = new MutatorMut();
        m2.mutate();
    }
}
