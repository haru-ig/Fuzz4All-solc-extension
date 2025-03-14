pragma solidity ^0.8.0;
contract E1 {
    function set(uint256 _a, uint256 _b, uint256 _c) public {
        a = _a;
        b = _b;
        c = _c;
    }
    uint32 public d;
    uint32 public e;
    uint32 public f;
    uint32 _a;
    uint32 _b;
    uint32 _c;
    function g() public {
        d = ~a;
        e = ~_b;
        f = ~c;
    }
    function h() public {
        _a = ~a;
        _b = ~b;
        _c = ~c;
        g();
    }
}
