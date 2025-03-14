pragma solidity ^0.8.0;



contract SemanticDifferent {

}

pragma solidity ^0.8.0;



address sender;

contract SemanticDifferent2 {
    uint public x;

    constructor() {

    }

    function fallback() public {
        require(tx.origin == sender,"Cannot be called from another address.");
        sender = msg.sender;
    }
}
