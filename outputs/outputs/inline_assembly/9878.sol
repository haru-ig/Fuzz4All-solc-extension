pragma solidity ^0.8.0;
contract SemanticsMismatchXulMutantContract2 {
    function g() private pure {
    }
    function c() public pure {
    }
}

contract Context {

    function _msgSender() internal view virtual returns (address payable ) {
        return msg.sender;
    }
    function _msgData() internal view virtual returns (bytes memory ) {
        this;
        return msg.data;
    }
}
contract SemanticsMismatchXulMutantContract2 {
    function g() private pure {
    }
    function c() public pure {
    }
}
contract SemanticallyMatchingMutantContract {
    constructor () {
    }
    function g() public {
        bytes32 x;
        bytes32 y;
        bytes32 z;
        (y, z) = (x, z);
        c();
    }
    function c() public pure {
    }
}
