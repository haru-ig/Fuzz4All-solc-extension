pragma solidity ^0.8.0;
contract ModificationExample{
    struct State{
        bool flag;
    }
    modifier sematicalEquivalent() {
        require(msg.value <= 0);
        _;
    }
    function semanticallyEquivalentFallback() public sematicalEquivalent {
        State storage s = State(0);
        s.flag = true;
    }

    fallback() sematicalEquivalent;
}

contract LowLevelCallExample{
    function lowLevelCallFallback() public pure {}
}
