pragma solidity ^0.8.0;
contract Caller{
    address public payWith;
    bytes32 public checkFor;
    constructor(address payable ac, bytes32 b) public payable {(address a, bytes32 b) = (ac, b);}
    receive(){
        require(msg.value == 0);
        address(this).transfer(msg.value);
    }
    function isValid() public view returns(bool){
        if(address(this).balance == 0) {
            return false;
        }
        return msg.sender == payWith || checkFor == msg.sender;
    }
    fallback() external payable {
        require(msg.value == 0);
        require(checkFor!= msg.sender);
        payWith.transfer(msg.value);
    }
}
