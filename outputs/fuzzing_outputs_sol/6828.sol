pragma solidity ^0.8.0;
contract Solitaire {
    contract Reel { }
    event OnFallback(address target);
    fallback() external payable { OnFallback(msg.sender); }
    receive() external payable {
} */
