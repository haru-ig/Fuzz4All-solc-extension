pragma solidity ^0.8.0;

contract Contract
{
  I contractA;
  uint256 counter;
  uint256[100] mutable aArr;
  uint256 mutable bArr;
  uint256 mutable bArr2;
  uint[][][] mutable bArr3;
  struct StructField
  {
    uint[] field;
  }

  StructField fieldA;

  function Contract()

  { }

  function increase() public pure returns(bool) {
  if( contractA.balance > 1000000){
      assembly {
        calldatacopy(memory, 0, calldatasize())
        let result := mstore(0x10)
        mstore(0x10, 0x0)
        switch result
        case 0 { revert(0) }
        default { return 0 }
      }
  }
  return true;
  }

  function getA() public view returns(uint, uint) {
    return (aArr[counter], bArr);
  }

  function setB(uint b, uint x) public {
    bArr = x;
  }

  function getBValue() public view returns (uint) {
    return bArr;
  }
}
