pragma solidity ^0.8.0;
contract mutation1 {
    uint public c;
    address public addr;

    function m() public {
        c = c + 5;
        addr = msg.sender;
    }
}
