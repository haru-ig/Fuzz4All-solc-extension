pragma solidity ^0.8.0;
contract PayableFallback {
    receive() payable {}
    fallback () payable {}
}
