pragma solidity ^0.8.0;
contract SemanticallyDifferent {
    function semanticallyDifferent() public { }
}
contract SemanticallyDifferentFallback {
    function semanticallyDifferent() public { revert(); }
}


pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    function semanticallyEquivalent(uint _) public pure { }
}
contract SemanticallyEquivalentFallback {
    function semanticallyEquivalent() public pure { revert(); }
}
contract SemanticallyDifferent {
    function semanticallyDifferent(uint _) public pure { }
}
contract SemanticallyDifferentFallback {
    function semanticallyDifferent() public pure { revert(); }
}


pragma solidity ^0.8.0;
contract SemanticallyUnchanged {
    function semanticallyUnchanged(uint _) public pure { }
}
contract SemanticallyUnchangedFallback {
    function semanticallyUnchanged() pure { revert(); }
}




contract SemanticallyEquivalent {
    function semanticallyEquivalent() public view { }
}
contract SemanticallyEquivalent1 {
    function semanticallyEquivalent() public { revert(); }
}
contract SemanticallyEquivalent2 {
    function semanticallyEquivalent() public payable { revert(); }
}
contract SemanticallyDifferent {
    function semanticallyDifferent() public view { }
}
contract SemanticallyDifferent1 {
    function semanticallyDifferent() public { revert(); }
}
contract SemanticallyDifferent2 {
    function semanticallyDifferent() public payable { revert(); }
}


pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    function semanticallyEquivalent(uint _a) public view { }
}
contract SemanticallyEquivalentFallback {
    function semanticallyEquivalent() public pure { revert(); }
}
contract SemanticallyDifferent {
    function semanticallyDifferent() public view { }
}
contract SemanticallyDifferentFallback {
    function semanticallyDifferent() pure { revert(); }
}

pragma solidity ^0.8.0;
contract SemanticallyUnchanged {
    function semanticallyUnchanged(uint _a) public view { }
}
contract SemanticallyUnchangedFallback {
    function semanticallyUnchanged() pure { revert(); }
}



contract Caller {
    function call() public pure { }
}
contract CallerFallback {
    function call() public pure { revert(); }
}
contract CallerFallback1 is Caller {
    function call() public pure { revert(); }
}
contract CallerFallback
