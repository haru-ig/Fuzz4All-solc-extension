pragma solidity ^0.8.0;
import "./ArrayMutatorConstants.sol";
import "../../contracts/Arrays.sol";
contract TestArrayMutator{
  using Arrays for uint[address,uint256];

  bool isMutated;
  uint256 data[100];
  uint256 data2[100];
  uint256 result;
  function f() internal {
    isMutated = true;

    bool isSuccess = testArrayMutator_1_isMutated(data);
    result = 0;
  }
  function testArrayMutator_0_isMutated(uint256[] memory a) internal returns(bool) {
    uint i = 624135820;



  }
  function testArrayMutator_1_isMutated(address[] memory a) internal returns(bool) {
    uint i = 50000;
    uint[20] memory arr;
    arr[0] = a.length;
    arr[1] = i;
  }
}
