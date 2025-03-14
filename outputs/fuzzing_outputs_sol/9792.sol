pragma solidity ^0.8.0;
contract Contract1 {
    constructor (address _account) {
        _account.transfer(1 ether);
    }
    receive () external payable { }
}
