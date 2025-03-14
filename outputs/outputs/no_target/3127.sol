pragma solidity ^0.8.0;
contract four {
    uint v;
    function f() public {
        v = 0;
        uint x = v.add(v);
    }
}
