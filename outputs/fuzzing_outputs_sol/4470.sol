pragma solidity ^0.8.0;
contract ContractCaller {
    address payable addr;
    function get() public payable {}
    function pay(uint x) public {
        addr.transfer(x);
    }
}
