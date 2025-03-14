pragma solidity ^0.8.0;
contract CallError {
    fallback() external {}
    receive() external payable{}
}
contract Mutator {
    constructor(){}
    fallback() external payable{
        require(false);
    }
    receive() external payable{}
}
