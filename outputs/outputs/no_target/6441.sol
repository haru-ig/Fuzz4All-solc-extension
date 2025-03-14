pragma solidity ^0.8.0;
contract interfaceB2 {
    function f() public payable;
}

contract modifierB2 {
    function f() public payable {
        throw;
        address payable x;
        x.transfer(address(this));
        x.transfer(address(this));
    }
}
