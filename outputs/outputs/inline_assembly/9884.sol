pragma solidity ^0.8.0;
contract SemanticsMismatchXulMutantContract {
    function g() public pure {
        if (fFalse) {
            c();
        } else {
            a();
        }
    }
    function a() public pure {
    }
    function c() public pure {
    }
}
contract SemanticallyMatchingMutantContractXel {
    bool fFalse;
    constructor () {
    }
    function g() public {
        c();
    }
    function c() public pure {
    }
}
contract SemanticallyMatchingMutantContractXel2 {
    bool fFalse;
    constructor () {
    }
    function g() public {
        c();
    }
    function c() public pure {
    }
}
contract SemanticallyMatchingMutantContractXel3 {
    bool fFalse;
    constructor () {
    }
    function g() public {
        c();
    }
    function c() public pure {
    }
}
contract SemanticallyMatchingMutantContractXel4 {
    bool fFalse;
    constructor () {
    }
    function g() public {
        a();
    }
    function a() public pure {
    }
}
