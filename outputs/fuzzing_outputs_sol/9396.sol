pragma solidity ^0.8.0;
contract Caller {
    uint16 internal balance;
    function callcontract_0x0() public payable {
        uint16 amount = 1500;
        this.balance = amount;
    }
    function callcontract_0x3() public payable {
        uint16 amount = 1500;
        balance = amount;
        callcontract_0x0();
        assert(this.balance >= amount);
    }
    function callcontract_0x5() public payable {
        uint16 amount = 1500;
        balance = amount;
        uint x = 150;
        selfdestruct(address(x));
        assert(this.balance >= amount);
    }
    function callcontract_0x7(uint16 _amount) public payable {
        uint16 totalBalance = _amount + balance;
        balance = totalBalance;
        assert(totalBalance >= _amount);
    }
}
