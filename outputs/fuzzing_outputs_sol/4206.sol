pragma solidity ^0.8.0;
contract MutatorCaller{
    address payable public addr;
    function fallback() public payable {
        addr.transfer(msg.value);
    }
}
