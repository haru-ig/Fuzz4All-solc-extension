pragma solidity ^0.8.0;
contract Caller {
    address public contract1;
    constructor() payable {
        contract1 = new Interface1();
    }
    receive() external payable {
        contract1.getData().transfer(address(this).balance);
    }
}
