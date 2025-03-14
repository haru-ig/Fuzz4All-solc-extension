pragma solidity ^0.8.0;
contract Mutated {
    address payable public address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    function() payable external { address_ = transactor(); }
    address payable private transactor() internal returns (address payable) { fail(); }
    receive() external payable { fail(); }
    function fail() internal {}
}
