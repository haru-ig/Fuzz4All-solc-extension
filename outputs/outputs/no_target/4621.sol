pragma solidity ^0.8.0;
contract B {
    function f() public{
        log1(f());
    }
    function log1(uint a) internal view{
        a;
        require(a > 0x10000, 'B.f');
    }
}
