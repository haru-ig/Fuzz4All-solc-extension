pragma solidity ^0.8.0;
contract Example20 {
    address caller; uint dummy;
    constructor() {
        caller = msg.sender; dummy = 99;
    }
    fallback() payable {}
}
