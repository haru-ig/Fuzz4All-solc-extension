pragma solidity ^0.8.0;
contract SolveAssembly1
{
    uint constant _x = 0x3;

    uint test() public pure returns(address)
    {
        return address(_x);
    }
}

pragma solidity ^0.8.8;
contract SolveAssembly2
{
    uint constant A = 0x203030303030303033333333;
    uint constant B = 0x8080808080808080;
    uint constant C = 0xaaaaaaaa82828282;

    function test() public pure returns(uint)
    {
      uint x = A;
      x = x ^ B;
      x = x ^ A;
      x = x ^ C;
      x = x ^ A;
      return x;
    }
}
