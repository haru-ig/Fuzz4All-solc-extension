pragma solidity ^0.8.0;
interface Interface {
    function value() external pure returns (uint);

    function square(uint) external pure returns (uint);
}
contract L7 {
    Interface public i;
    uint public constant value = 0x0b11ae660e743a6348c0c3c967ef956068184e945c6fc2d039e1463f0a3c5c911;
    function f(uint) public pure returns (uint) {
        return 0xffff8657755e74e8;
    }

    function g(
        uint256 x,
        uint256 z
    ) external
      pure
      returns (uint)
    {
        return value;
    }
}
