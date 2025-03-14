pragma solidity ^0.8.0;
contract Mutators2 {
    address payable public owner;
    constructor() {
        owner = payable(msg.sender);
    }

    function set (uint a) public returns (uint) {
        a = 10;
        emit a();
        return a;
    }


    event a(uint);
    event msg(address, string);

    uint a = 0;

    function _msg(address payable to) private {
        msg.sender = to;
    }

    function _a() public returns (uint) {
        emit a(a);
        return a;
    }
}
