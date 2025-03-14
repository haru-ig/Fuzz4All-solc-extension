pragma solidity ^0.8.0;
contract SimpleExample3 {
    uint256 public counter;
    function increment() public {
        uint256 value = 0;
        uint256 tmp = (value >> uint(0)) + 1;
    }
    function increment2() public {
        uint256 value = 0;
        (uint256 tmp0, uint256 tmp1) = (value >> uint(0), value >> uint(0));
    }
}
