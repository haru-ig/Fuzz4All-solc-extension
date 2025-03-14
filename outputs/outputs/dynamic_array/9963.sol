pragma solidity ^0.8.0;

contract SemanticTest3 {
    uint constant public initialValue = 5;
    uint public index;
    constructor () public {
        index = 0;
    }
    modifier myModifier(uint a) {
        index += a-1;
        _;
    }
    function incrementIndex(uint a) public myModifier(a) {
        index += a;
    }
}
