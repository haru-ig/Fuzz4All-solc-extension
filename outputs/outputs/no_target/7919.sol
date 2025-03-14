pragma solidity ^0.8.0;
contract TestMutator2 {
    function set(uint256 _value) public {
        x = (x >> 227) << uint(33) > 0? 0 : (x << 227) >> (x >> 227);
    }
    static uint256 x;
    event NewEvent();
    function () public {
        set(uint(x >> 227) << 33 > 0? 0 : (x << 227) >> (x >> 227));
        emit NewEvent();
    }
}
