pragma solidity ^0.8.0;
contract SemanticTest3 {
    uint public index;
    constructor () public {
        index = 0;
    }
    modifier myModifier() {
        index -= 1;
        return;
    }
    function decrementIndex() public myModifier() {
        index -= 1;
    }
}
