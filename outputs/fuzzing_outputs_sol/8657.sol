pragma solidity ^0.8.0;
contract Mutator2 {
    uint256 amount;
    address payable beneficiary;
    constructor(address payable _beneficiary) {
        amount = 1;
        beneficiary = _beneficiary;
    }
    function mutator2() internal {
        uint256 _initialBalance = beneficiary.balance;
        beneficiary.call{value: amount}("");
        uint256 difference = beneficiary.balance - amount + _initialBalance;
        if (difference > 0) {
            amount++;
        }
    }
}

pragma solidity ^0.8.0;
contract Caller {
    uint256 amount;
    constructor(uint256 _amount) {
        amount = _amount;
    }
    function call() external {
        uint256 initialBalance = address(this).balance;
        uint256 total = 0;
        for (uint256 ii = 0; ii < amount; ii++) {
            total += address(this).balance;
        }
        if (total!= initialBalance) {
            revert();
        }
    }
}
