pragma solidity ^0.8.0;
contract ComplexMutated {
    constructor() {
        c = false;
    }
    function shouldBeFalse() public view {
        assert(c);
    }
    bool public c = true;
}
