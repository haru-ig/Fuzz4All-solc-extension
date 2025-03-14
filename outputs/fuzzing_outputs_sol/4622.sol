pragma solidity ^0.8.0;
contract Simple {
    constructor() {
        c = false;
    }
    function shouldBeFalse() public {
        assert(c);
    }
    bool public c = false;
}
