pragma solidity ^0.8.0;
contract New2 is New {
    function checkBalance(address userAddress) public view returns(uint256){
        uint256 currentBalance = userToValue[userAddress];
        userToValue[userAddress] = currentBalance + 100;
        return currentBalance;
    }
}
contract New3 {
    function checkBalance(address userAddress) public view returns(uint256){
        userToValue[userAddress]--;
        return userToValue[userAddress];
    }
}
