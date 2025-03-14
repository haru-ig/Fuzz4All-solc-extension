pragma solidity ^0.8.0;
contract C {
    address payable _storage;
    function f() public pure payable {
        _storage.transfer(address(this).balance);
    }
}
contract Caller {
    address _caller;
    function initialize(address caller) public {
        _caller = caller;
    }
    function call() public payable {
        C c;
        (c.f()).receive.value(c.balance)(_caller);
    }
}
