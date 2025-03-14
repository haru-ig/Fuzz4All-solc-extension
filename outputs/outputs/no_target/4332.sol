pragma solidity ^0.8.0;
contract K {
  constructor() public { bool x;}
  function f() public pure { x; }
}
interface A{
  function a0() external view returns (uint8);
  function a1() external view returns (uint16);
  function a2() external view returns (uint24);
  function a3() external view returns (uint32);
  function a4() external view returns (uint40);
  function a5() external view returns (uint56);
  function a6() external view returns (uint64);
  function a7() external view returns (uint72);
  function a8() external view returns (uint80);
  function a9() external view returns(uint);
  function a10() external view returns (bytes1);
  function a11() external view returns (bytes);
  function a12() external view returns (string memory);
  function a13() external view returns (address);
  function a14() external view returns (abi.FunctionCall);
  function a15() external view returns (uint8);
  function a16() external view returns (uint16);
  function a17() external view returns (bytes32);

}
abstract contract B is A{
