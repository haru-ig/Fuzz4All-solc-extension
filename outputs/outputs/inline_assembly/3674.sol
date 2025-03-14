pragma solidity ^0.8.0;
contract Test {
  function test() public returns (uint256, uint256) {
    assembly {

      let g_ := 0x1234

      mstore(0x40, g_)


      if gt(g, 1000) {

        mstore(0x40, g)
      } else {

        mstore(0x44, g)
      }


      g := mload(0x44)

    }
    return (g, constantValue);
  }
}
