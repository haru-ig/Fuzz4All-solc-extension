pragma solidity ^0.8.0;
contract Mutated {
    function noChange() public pure {
        Basic _b = Basic();
        _b.noChange();
        All _a = All();
        _a.noChange();
        Mutated _s = Mutated();
        _s.noChange();
    }
}
