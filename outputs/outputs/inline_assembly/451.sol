pragma solidity ^0.8.0;
contract SemanticallyEquivalentM33 {
    uint256 constant a = 20;
    uint256 constant b = 20;
    constructor () public {
        c();
    }
    modifier m16 () {
        emit Log(msg.sender, "", "");
        yield;
    }
    function c() private {   }
    modifier m33() {
        emit Log(msg.sender, "", "");
        yield;
    }
    function k() private {
        if (a + b < 5) m16();
        else m33();
    }
}
