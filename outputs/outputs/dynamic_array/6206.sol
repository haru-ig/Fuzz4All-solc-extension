pragma solidity ^0.8.0;
import "../I.sol";
contract C is I
{
  function test (uint256[] memory) external returns (uint256)
  {
    emit test1 (101);
    return 101;
  }
  function test1 (uint256) private returns (uint256) { emit test2 (true); return true; }
  function test2 (bool) private returns (uint256) { emit test3 (201); return 201; }
  function test3 (bytes11) private returns (uint256) { emit test4 (201); return 201; }
  function test4 (bytes memory) private returns (uint256) { emit test5 (0x00000000000000000000000000000000000000000000000000000000000000); return 0x0000000000000000000000000000000000000000000000000000000000000000000; }
  function test5 (bytes8) private returns (uint256) { emit test6 (0x000000000000000000000000000000000000000000000000000000000000000000); return 0x0000000000000000000000000000000000000000000000000000000000000000; }
  function test6 (bytes1) private returns (uint256) { emit test7 (uint256(1)); return uint256(1); }
  function test7 (bool) private returns (uint256) { emit test8 (bytes8(bytes(1))); return bytes8(bytes(1)); }
  function test8 (bytes1) private returns (uint256) { emit test9 (bytes11(bytes(1))); return bytes11(bytes(1)); }
}
