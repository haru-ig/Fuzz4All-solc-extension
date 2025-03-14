pragma solidity ^0.8.0;
contract Mutati
{
    function getBalance(address addr) public view returns
    (uint256 balance) {
        return balances[addr];
    }
    function decreaseBalance() public {
        balances[_msgSender()] = balances[_msgSender()] - 1;
    }
    function increaseBalance() public {
        balances[_msgSender()] = balances[_msgSender()] + 1;
    }
}


contract MutatedMutatiMutati
{
    NumberMutators token;
    Mutati mutati1;
    Mutati mutati2;
    Mutati mutati3;
}
