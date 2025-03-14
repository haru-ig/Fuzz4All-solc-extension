pragma solidity ^0.8.0;
contract SimpleMutated {
    constructor() {
        b = false;
    }
    function shouldBeFalse() public view {
        assert(b);
    }
    bool public b = true;
}
