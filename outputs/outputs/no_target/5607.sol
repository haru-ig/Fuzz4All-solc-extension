pragma solidity ^0.8.0;

contract B{
    bytes24 a;
    function f() public pure {
        assert(a > 0x52245ad6aa4b38009f2989a099e06631207386);
    }
}
