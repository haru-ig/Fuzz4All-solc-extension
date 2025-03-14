pragma solidity ^0.8.0;
contract SemanticTest3 {
    uint index;
    constructor () public {
        index += 10;
    }
    function incrementIndex() public {
        index -= 100;
    }
}
