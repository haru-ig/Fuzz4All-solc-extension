pragma solidity ^0.8.0;
contract Caller {
    address payable contractAddress;
    uint public balance;
    uint public constant numTransactions = 20;
    uint public constant numCalls = 20;
    Constructor constructorAddress;
    FallbackRecipient fallbackAddress;

    constructor (uint _initialBalance, uint _numTransactions, uint _numCalls) {
        address payable constructorAddress = payable(msg.sender);
        constructorAddress.send(_initialBalance);
        balance = _initialBalance;
        for (uint idx = 0; idx < _numTransactions; ++idx) {
            transfer(payable(address(this)), 1);
         }
        for (uint idx = 0; idx < _numCalls; ++idx) {
            EtherContract contractAddress = EtherContract();
            contractAddress.sendValue(1 ether);
        }
    }
    function EtherContract() external pure {
    }
    function transfer(address _dest, uint _value) internal {
        balance += _value;
        _dest.transfer(_value);
    }
    function pay () internal payable {
    }

    function() public  {
    }
    function getBalance() public view returns (uint) {
        return balance;
    }
}
