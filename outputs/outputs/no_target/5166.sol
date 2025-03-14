pragma solidity ^0.8.0;
contract SimpleExample10 {
    function increment() public pure {
        uint256 value = 1;
        uint256 tmp = (value >> uint(0)) + value;
        assert(tmp == 0);
    }
}
contract SimpleExample11 is SimpleExample10 {
}
