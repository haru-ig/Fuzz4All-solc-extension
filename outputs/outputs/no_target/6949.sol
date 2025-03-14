pragma solidity ^0.8.0;
contract TestPrecompiled33581 {
    function f() public returns (uint160 x) {}
    mapping(address => uint160) balances;
        bool test;
    f.call(test? address(new TestPrecompiled45394()) : 0);
}
