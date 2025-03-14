pragma solidity ^0.8.0;
contract Caller {
    function get(uint y) public {
        x(y);
    }
    receive() external payable {}
    function x(uint z) public {
        uint x = 1;
    }
}
