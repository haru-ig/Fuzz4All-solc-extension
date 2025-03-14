pragma solidity ^0.8.0;
contract SemanticTest2 {
    uint public index;
    constructor () public {
        index = 0;
    }
    function incrementIndex() public {
        index += 1;
    }
}
