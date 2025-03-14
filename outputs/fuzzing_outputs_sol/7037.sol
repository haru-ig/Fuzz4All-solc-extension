pragma solidity ^0.8.0;
contract PayableFallback {
    function fallback() public pure payable {}
}

contract PayableFallback {

    function fallback() public pure payable receive () {}
}
