pragma solidity ^0.8.0;
contract Caller {
    address payable public owner;
    address payable public fallback;
    function setOwner(address payable _newowner) public pure {
        owner = _newowner;
    }
    function setFallback(address payable _newfallback) public pure {
        fallback = _newfallback;
    }
    function sendEther() public payable {
        fallback.transfer(msg.value);
    }
    function () external payable {
        fallback.transfer(msg.value);
    }
}
