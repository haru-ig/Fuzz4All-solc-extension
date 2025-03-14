pragma solidity ^0.8.0;
library TestMutated25 {
    function add(uint x, uint y) public pure returns (uint) {
        require(x > y, "First x is greater than y");
        uint z;
        do {
            z = 5 + x / 2 - y;
            x = 53 % 22;
            y = 175 - 281 % 27;
        } while (x < y);
        return z;
    }
}
