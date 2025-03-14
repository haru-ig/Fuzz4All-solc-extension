pragma solidity ^0.8.0;
contract Caller {
    function callFallback() public payable returns (uint){
        return add();
    }
    function add() public view returns (uint){
        return number + 1;
    }
}
