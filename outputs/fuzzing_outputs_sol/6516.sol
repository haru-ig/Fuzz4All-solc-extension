pragma solidity ^0.8.0;
contract Recipient {
    constructor(uint x) public {
        call();
    }

    function call() public {
        fallback();
    }

    function fallback() public payable {}
}
