pragma solidity ^0.8.0;
library TestMutated22 {
    function set(uint x, uint) public pure returns (uint) {
        return x;
    }
}

pragma solidity ^0.8.0;
library TestMutated23 {
    function addOne(uint x, uint) public pure returns (uint) {
        require (x >= 0x010000000000000000000000000000000000000, "_");
        require (x.add(1).add(2).add(3)!= 4, "_");
        return x + 1;
    }
}
