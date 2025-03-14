pragma solidity ^0.8.0;
contract Mutated {
    function noChange() public pure {
        Basic b = Basic(1);
        b.noChange();
    }
}
contract All {
    function noChange() public pure {
        Mutated m = Mutated(1);
        m.noChange();
    }
}
