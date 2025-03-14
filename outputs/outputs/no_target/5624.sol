pragma solidity ^0.8.0;
contract CoB is CoA{
    uint x = 1;
    uint y = 2;
    function g1(uint a, uint b, uint c) public pure virtual returns (uint, uint, uint) {
        assert(b - 42 == 0);
        return (a, b, c);
    }
    function g2(uint a, uint b, uint c) public pure virtual returns (uint, uint, uint) {
        return g1(a, b, c);
    }
}

pragma solidity ^0.8.0;
contract CoC is CoB{
    uint x = 1;
    uint y = 2;
    function g1(uint a, uint b, uint c) public pure virtual returns (uint, uint, uint) {
        assert(b - 42 == 0);
        return g1(a, b, c);
    }
    function g2(uint a, uint b, uint c) public pure virtual returns (uint, uint, uint) {
        return g1(a, b, c);
    }
}
