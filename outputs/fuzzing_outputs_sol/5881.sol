pragma solidity ^0.8.0;
contract Simple {
    constructor () {
        fallback("");
    }

    receive() external payable { }

    function fallback (string memory) public pure {}
}
