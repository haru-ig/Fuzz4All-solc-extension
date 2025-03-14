pragma solidity ^0.8.0;
contract Complexity06 {
    address payable internal _beneficiary;


    event FundsCollected(uint256 _value);

    constructor() {
        address contractAddress = address(this);
        _beneficiary = contractAddress;
    }

    function () external payable {
        revert();
    }


    function collect() public {
        _beneficiary.transfer(_beneficiary.balance);
        emit FundsCollected(msg.value);
    }
}
