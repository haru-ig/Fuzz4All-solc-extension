pragma solidity ^0.8.0;
contract SimpleExample4 {
    uint256 public counter;
    function increment() public {
        uint256 value = 0;
        (uint256 tmp0, bool tmp1) = (value >> uint(0), false);
    }
    function increment2() public {
        uint256 value = 0;
        uint256 tmp = (uint256(value >> uint(0))) - (value >> uint(0));
    }
}
