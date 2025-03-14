pragma solidity ^0.8.0;
contract C {
    mapping (address => uint[]) m;
    uint D;
    function f() public {
        m[address(this)].push(1);
        m[address(this)] = m[address(this)] + 1;
        m = m + "";
        D += 1;
    }
}
