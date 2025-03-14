pragma solidity ^0.8.0;

contract c {
    uint256 x;
    uint256[] x256;
    uint256[48] x48;
    uint128 x128;

    function f1() external view returns (uint256);

    function f2(uint x1) external view returns (uint);

    function f3(uint x1) public view returns (uint);

    function f4(uint x1, uint x2) external view returns (uint);
    function g(i x) public { uint x2 = x.m();  }

    function f5() internal view returns (uint);
    function f6(uint x1) internal view returns (uint);
}
