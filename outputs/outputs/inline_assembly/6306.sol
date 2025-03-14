pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract DollarInEtherExample34 {
    uint public constant GAS_LIMIT = 42780802;
    uint public totalGasSpent;
    address payable public walletAddress;
    constructor () payable{
        walletAddress = msg.sender;
        totalGasSpent = 0;
    }
    fallback() external payable{}
    function () public payable{
        assert(totalGasSpent < GAS_LIMIT);
        totalGasSpent += msg.value;
    }
}
