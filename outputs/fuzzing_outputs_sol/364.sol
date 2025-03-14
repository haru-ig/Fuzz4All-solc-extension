pragma solidity ^0.8.0;
contract MutatedContract {
    address public payee;
    constructor(address payable _payee) public {
        payee = _payee;
    }
    function foo() public {
        emit Emitted(name());
    }
    receive() external payable {}
    function setPayee(address payable _payee) public onlyOwner {
        emit SetPayee(payee, address(this));
        payee = _payee;
    }
    event Emitted(string name);
    event SetPayee(address _from, address _to);
}
contract Caller {
    function start() public {
        MutatedContract(new MutatedContract(address(this))).setPayee(address(this));
    }
}
