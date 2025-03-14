pragma solidity ^0.8.0;
contract Equivalent {
    constructor() {
        c = true;
    }
    function shouldBeFalse() public view {
        assert(c);
    }
    bool public c;
}
