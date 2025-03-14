pragma solidity ^0.8.0;
contract Original {
    function receive() public payable {}
}

contract Solved {
    function receive() public payable {}

    function fallback() public payable {}
}
