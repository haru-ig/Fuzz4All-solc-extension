pragma solidity ^0.8.0;
contract HelloWorld {
    function add(uint a, uint b) public pure returns (uint) {
        if (a == 255 || b == 255) {
            return 255;
        }
        uint c = a + b;
        require(c <= 256, "overflow");
        return c;
    }
}
