pragma solidity ^0.8.0;
contract FallbackFunction {
    uint public amount;
    fallback () public payable {
        amount = address(this).balance;
    }
    function transfer(address _to) public override {
        if (!address(this).balance > amount) throw;
        amount -= amount;
        _to.transfer(amount);
    }
}
