pragma solidity ^0.8.0;
contract Mutator22SemanticallyEquivalentMutated {
    uint public a;
    uint public b;
    function seta() public {
        a = b;
    }
    function setb() public {
        b = a;
    }
}
