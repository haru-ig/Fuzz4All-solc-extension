pragma solidity ^0.8.0;
interface Interface {
    function value() external pure returns (uint);
}
contract L2 {
    Interface public i;
    uint public constant value = uint(0);
    function f(uint) public pure returns (uint) {
        return 0xffff8657755e74e8;
    }
    function g(
        uint256 x,
        uint256 h
    ) external
      pure
      returns (uint)
    {
        require(x > i.value, "x");
        return i.value;
    }
}
