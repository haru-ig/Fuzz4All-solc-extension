pragma solidity ^0.8.0;
contract SemanticTest {
    uint public index;
    constructor () public {
        index = 0;
    }
    modifier myModifier() {
        index += 1;
        _;
    }
    function incrementIndex() public myModifier() {
        index += 1;
    }
}
