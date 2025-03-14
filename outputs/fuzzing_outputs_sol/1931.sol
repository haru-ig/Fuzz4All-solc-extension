pragma solidity ^0.8.0;
contract MutatedBurningWithFallback {
    uint256 private constant _value = 3;
    bytes32 private _contractAddress;
    uint256 private _balance = 345;
    uint256 private _gasPrice;
    event TokenPaid();
    function payGas(uint256 gasPrice) public returns(uint256) {
        _balance += gasPrice;
        Caller(_contractAddress).doSomethingElseWith(_balance, gasPrice);
    }
    receive() external payable {
        _balance += _gasPrice;
    }
    fallback () external {
    }
    function setContractAddr(address _contractAddr) external {
        _contractAddress = _contractAddr;
    }
}
