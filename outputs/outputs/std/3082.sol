pragma solidity ^0.8.0;
contract Memento {

    address payable addr;
    uint balance;
    constructor () {
        balance=msg.value;
      addr = payable(msg.sender);
    }
     function restore() public {
        address payable oThis = payable(msg.sender);
        address payable thisAdd = payable(addr);
        uint newBalance = balance - thisAdd.balance;
      thisAdd.transfer(newBalance);
      addr = oThis;
    }
    function save(uint value) public {
      addr.transfer(value);
    }

    function onSave(uint value) public {
        balance += value;
    }
}
