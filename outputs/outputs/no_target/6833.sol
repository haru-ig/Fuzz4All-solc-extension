pragma solidity ^0.8.0;
contract TestMutated728Mutator {
    uint x;
    uint mul(uint x, uint y) public pure returns (uint z) {
        if (x < 0) {
            z = mul(x, y);
        } else {
            z = mul(y, x);
        }
    }
}
contract TestMutated728Base {
    function testMul(uint x, uint y) public pure returns (uint z) {
        if (x < 0) {
            z = mul(x, y);
        } else {
            z = mul(y, x);
        }
        TestMutated728 mutator = new TestMutated728Mutator();
        z = mutator.mul(1, 1);
    }
}
