pragma solidity ^0.8.0;
contract Mutated {
    mapping (address => uint256) userToValue;
    function checkBalance(address userAddress) public view returns(uint256){
        return userToValue[userAddress];
    }
    function changeValue(address userAddress, uint256 value) public{
        userToValue[userAddress] = value;
    }
    function getNewBalance(address userAddress) public view returns(uint256){
        return userToValue[userAddress];
    }
}
contract Mutate {
    uint256 public newValue;
    function mutate() public pure{
        newValue += 10;
    }
    function getNewValue() public pure returns(uint256){
        return newValue;
    }
}
