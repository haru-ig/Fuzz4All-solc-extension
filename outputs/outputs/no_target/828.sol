pragma solidity ^0.8.0;
contract CrowdsaleMutated {
    uint256 public _beneficiary;
    constructor(uint256 _beneficiary_)
        public
    {
        _beneficiary = _beneficiary_;
    }
    function () external payable {
        _beneficiary += 2;
    }
}
contract BurnMutated {
    function Burn() external {
        _;
    }
}
