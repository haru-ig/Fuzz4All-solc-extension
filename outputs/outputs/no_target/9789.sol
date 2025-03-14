pragma solidity ^0.8.0;
event testEvent(address sender);
contract auraTest {
    address payable public payableTarget;
    function auraTest (address payable _target){
        payableTarget = _target;
    }
    function setTarget(address payable _target){
        payableTarget = _target;
    }
    function test(address sender) public payable{
       emit testEvent(sender);
    }
}
