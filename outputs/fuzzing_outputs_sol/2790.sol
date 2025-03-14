pragma solidity ^0.8.0;
contract Caller {
    address payable[] public _addr;
    uint256[] public _amount;
    constructor() {
        _addr.push(address(new Caller4(33)));
        _amount.push(2);
    }
    receive() external payable {
        _addr[0].transfer(msg.value);
    }
    fallback() external payable {
        _amount[0].transfer(_addr[0]);
    }
}
