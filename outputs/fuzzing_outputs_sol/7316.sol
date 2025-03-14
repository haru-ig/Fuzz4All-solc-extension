pragma solidity ^0.8.0;
contract ModdedContract is LowLevelContract {
    uint constant internal defaultBalance = 25;



    uint constant internal modifiedBalance = 666;

    function doLowLevelCall(uint amount, address payable to, bytes memory data) external pure override {
        if (to.call{value: amount}(data)!= defaultBalance) revert();
        to.transfer(amount);
    }

    function getBalance() public view returns (uint) {
        return modifiedBalance;
    }
}

pragma solidity >=0.8.0;
