pragma solidity ^0.8.0;
contract Memento {
    function Fallback(uint) external payable {}
    function call(uint) external payable {}
}
contract Failure {
    function Fallback(uint) public payable {}
    function call(uint) external payable {}
}
