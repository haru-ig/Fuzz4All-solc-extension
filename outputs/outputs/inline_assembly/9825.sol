pragma solidity ^0.8.0;
contract SemanticsSemanticallyEquivalentXulContract {
    constructor () {
    }
    function b() public {
        c();
    }
    function c() public {
        uint ifcond = true;
        if (ifcond)
        ifcond = true;
        if (ifcond)
            c();
    }
}
