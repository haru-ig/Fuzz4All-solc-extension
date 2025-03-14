pragma solidity ^0.8.0;
contract A {
    modifier isPublic {
        assert(!1, "!public must be false");
        _;
    event e1(uint i, uint j);
    function f1(uint256 x) public {
        uint i;
        uint j;
        i = 3;
        j = 2;
        assert(i == j);
        i *= 4;
        assert(i == j);
        j += 1;
        assert(i == j);
        i += 5;
        assert(i == j);
        i -= 2;
        assert(i == j);
        i **= 2;
        assert(i == j);
        {
            uint256 t1;
            t1 = 1;
            i += (uint128(t1.x) / 2).touint256();
            assert(i == j);
        }
    }
    constructor () public {
        f1(1);
    }
}
