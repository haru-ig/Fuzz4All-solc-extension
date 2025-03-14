pragma solidity ^0.8.0;
contract NewSemanticsCaller {
    event Fallback();

    receive() external payable {
        emit Fallback();
    }
}
