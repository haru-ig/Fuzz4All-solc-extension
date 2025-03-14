pragma solidity ^0.8.0;
contract ContractCaller {
    address payable addr;
    uint x;
    constructor(uint a) {
        x = a;
    }
    function get() public payable {}
    function pay(uint y) public {
        addr.transfer(x);
        addr.transfer(y);
    }
}
