pragma solidity ^0.8.0;
contract fifth{
    uint public v;
    uint public x;
    function h() public {
        assert(v == 0);
        x += v - v;
        v = 0;
    }
}
