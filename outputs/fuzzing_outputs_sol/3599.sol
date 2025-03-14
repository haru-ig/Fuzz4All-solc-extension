pragma solidity ^0.8.0;
contract Contract01 {
    function mutate(uint256 x, uint256 y) public {
        uint256 re = x + y;
        emit Evt(x + y);
    }
    event Evt(uint a);
}
contract Contract02 is Contract01 {
    function mutate(uint1024 x, uint256 y) public {
        uint256 re = x + y;
        emit Evt(uint(x ^ y));
    }
    event Evt(uint a);
}
