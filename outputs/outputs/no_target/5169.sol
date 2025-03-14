pragma solidity ^0.8.0;
contract SimpleExample4 {
    uint256 public counter;
    function increment() public {
        (uint256 tmp0, uint256 tmp1) = (uint256(counter) >> uint(0), uint192(counter));
    }
}
