pragma solidity ^0.8.0;
contract MutantContract {
    bool fTrue;
    constructor () {
    }
    function g() public {
        c();
    }
    function c() public pure {
    }
    modifier m() {
        fTrue = false;
        _;
        fTrue = true;
    }
    modifier n() {
        fTrue = false;
        _;
        fTrue = true;
    }
}
contract MutantContractInterface {
}
