pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutator {
    constructor(uint x, uint _y)
        public
        returns (uint)
        pure
    {
        return x + _y;
    }
    function test(uint x) public view returns (uint) {
        uint _y = x >> 1;
        uint z = mutatorTest(x) + _y;
        uint w = uint(mod(z + x, constant(9)));
        return w - z;
    }
}
