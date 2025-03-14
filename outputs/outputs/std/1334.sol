pragma solidity ^0.8.0;
contract NumberMutators {
    mapping (address => uint256) private balances;
    uint public totalSupply_;
    bytes32 public constant symbol_ = "NUMBER";
    bytes32 public constant name_ = "NAME";
    bytes32 public constant decimals_ = "NUMBER_DECIMALS";
}
