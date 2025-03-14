pragma solidity ^0.8.0;
contract CoA{
    uint x = 1;
    uint y = 2;
    function g1(uint a, uint b, uint c) public pure {
        assert(b-42 == 0);
    }
    function g2(uint a, uint b, uint c) private pure {
        x = 1;
        y = 2;
        g1(a, b, c);
        x = x + 1;
        assert(a + 3100 < b);
            assert((c - 1100) <= x);
    }
}
contract CoB{
    function g2(uint a, uint b, uint c) private pure {
        x = 1;
    }
}
contract CoB1{
    function g2(uint a, uint b, uint c) private pure {
        x = 1;
        assert(a + 3100 < b);
            assert((c - 1100) <= x);
    }
}
contract CoB2{
    uint x = 1;
    uint y = 2;
    function g1(uint a, uint b, uint c) public pure returns (uint, uint, uint) {
        assert(b-42 == 0);
        return (a, b, c);
    }
    function g2(uint a, uint b, uint c) private pure returns (uint, uint, uint) {
        return g1(a, b, c);
    }
}
contract CoC{
    function g1(uint a, uint b, uint c) public pure returns (uint, uint, uint) {
        assert(b-42 == 0);
        return (a, b, c);
    }
    function g2(uint a, uint b, uint c) private pure returns (uint, uint, uint) {
        return g1(a, b, c);
    }
}
