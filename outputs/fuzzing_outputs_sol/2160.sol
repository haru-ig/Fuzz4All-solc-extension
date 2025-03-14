pragma solidity ^0.8.0;
contract Mutater333 is Mutater332 {
    constructor() Mutater332(msg.sender) {}
    function getPayee() public view returns (address payee) {
        return payee;
    }
    fallback() external payable {}
}
