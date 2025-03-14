pragma solidity ^0.8.0;
contract Address {

    function get_address(address arg) public {

        emit Arg(msg.sender, arg);
    }
    event Arg(address from, address to, uint32 value);
}
