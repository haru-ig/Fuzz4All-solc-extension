pragma solidity ^0.8.0;
contract Fallback {
    function fallback() public payable {
        Demonstration().transfer{value: 100}() is payable;
        Mutator().increase();
    }
}
