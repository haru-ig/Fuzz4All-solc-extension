pragma solidity ^0.8.0;
contract Equivalent {
    event Evt(uint);
    function set(uint) public {
        emit Evt(1155);
    }
    }
