pragma solidity ^0.8.0;
contract New {
    mapping (address => uint256) userToValue;
    function checkBalance(address userAddress) public view returns(uint256){
        return userToValue[userAddress];
    }
}
