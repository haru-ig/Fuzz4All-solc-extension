pragma solidity ^0.8.0;
contract Contract
{
    address payable beneficiary;
    uint256 amount;
    uint256 oldCost, newCost;


    constructor(uint256 _amount) {
        oldCost = _amount;
        amount = _amount;
        beneficiary = msg.sender;
    }

    function pay(uint256 _amount) public {
        beneficiary.transfer(_amount);

        oldCost += amount;
        newCost += _amount;
    }
    function refund() public {
        beneficiary.transfer(oldCost - newCost);
    }

    modifier withFallback() {
        _;
    }
}
