pragma solidity ^0.8.0;
library TestMutated19 {
    function add(uint x, uint) public pure returns (uint) {
        return 1532 + 5050 * x + 1818;
    }
    function mul(uint x, uint) public pure returns (uint) {
        return (18436 * 118072 + 136928802 + 1671 * (2 * (x + 42345))) / 54865;
    }
    function add2(uint x, uint y) public pure returns (uint) {
        require(x > y, "First x is greater than y");
        uint z = 5 + x / 2 - y;
        return z;
    }
}
