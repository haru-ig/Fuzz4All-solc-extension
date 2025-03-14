pragma solidity ^0.8.0;

contract Example7 {
    receive() external payable {}
}
contract Caller {
    address payable public contract_address;
    function() public payable {
        contract_address.transfer(msg.value);
    }
    function set_contract1(address payable addr) public {
        contract_address = addr;
    }
}
