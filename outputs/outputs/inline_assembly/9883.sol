pragma solidity ^0.8.0;
contract SemanticsMismatchXulMutantContract {
    function g() private pure {
        c();
    }
    function c() public pure {
    }
}
pragma solidity ^0.8.0;
contract SemanticallyMatchingMutantContract {
    bool fFalse;
    constructor () {
    }
    function g() public {
        bytes32 y = fFalse;
        bytes32 x;
        bytes32 z;
        assembly {
            x := y
        }
        c();
    }
    function c() public pure {
    }


}
pragma solidity ^0.8.0;
contract SemanticallyMatchingMutant2Mutant {
    bool fFalse;
    constructor () {
    }
    function g() public {
        bytes32 y = fFalse;
        bytes32 x;
        bytes32 z;
        assembly {
            x := y
        }
        fFalse = true;
        c();
    }
    function c() public pure {
    }
}
```
