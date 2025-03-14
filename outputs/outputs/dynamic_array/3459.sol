pragma solidity ^0.8.0;
contract C {
    using uint for uint[];
    struct S {
        uint x;
        uint y;
        S s;
    }
    uint[] public m;
    function a() public returns (S memory) {
        m[0] = 1;
        m[1] = 2;
        m[2] = m + m + m + m + m + m + 1;
        return S(m[2], m + 1);
    }
}
