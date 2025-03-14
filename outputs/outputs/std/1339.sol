pragma solidity ^0.8.0;
contract NumberMutatorsMutators is NumberMutators {

    function getBalance() public view returns(uint) {
        return balances[msg.sender];
    }
    function setBalance(uint _balance) public {
        balances[msg.sender] = _balance;
    }
}
contract NumberMutatorsMutatorsMutatorsMutatorsMutators is NumberMutatorsMutatorsMutators {

    function getBalance(uint) public view returns(uint) {
        return balances[msg.sender];
    }
    function setBalance(uint _balance, uint) public {
        balances[msg.sender] = _balance;
    }
}
contract NumberMutatorsMutatorsMutatorsMutatorsMutatorsMutatorsMutators is NumberMutatorsMutatorsMutatorsMutatorsMutatorsMutators {

    function getBalance() public view returns(uint) {
        return balances[msg.sender];
    }
    function setBalance(uint _balance1, uint _balance2) public {
        balances[msg.sender] = _balance1 + _balance2;
    }
}
