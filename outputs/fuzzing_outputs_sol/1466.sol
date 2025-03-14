pragma solidity ^0.8.0;
contract SemanticMutationsExample {
    address payable smartContract1;
    address payable smartContract2;
    function semanticMutatedExample(address payable _addr) public returns(uint amount){
        smartContract2 = _addr;
        smartContract1.transfer(_addr.balance);
        return _addr.balance;
    }
}
