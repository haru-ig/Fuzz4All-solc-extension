pragma solidity ^0.8.0;
contract SemanticTest3 {
    uint public index;
    constructor () public {
        index = 0;
    }
    modifier myModifier() {
        index -= 1;
        _;
    }
    function decrementIndex() public myModifier() {
        index -= 1;
            assert( index == 0 && "index should be zero");
    }
}
