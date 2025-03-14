pragma solidity ^0.8.0;
import "../ArrayMutatorMutator.sol";

contract ArrayMutator {
  uint256 mutLength;
  uint256 mutAddr;
  uint256 addrLength;
  address addrList[2];

  constructor(){
    mutLength = 0;


    addrLength = 2;
    mutAddr = 0;
    for(uint256 i = 0; i < addrLength; i++) {
      addrList[i] = address(this);
    }
  }

  function readStore(address addrType) view returns (address[]) {
    uint256 len = addrType.balance;
    address[] memory retVal = new address[](len);
    uint256 j = 0;

    while (j < len) {
      address address1 = addrType;


      address1 = addrList[j];
      retVal[j] = address1;
      j += 1;
    }
    return retVal;
  }

  function mutateStore(uint256 arrayLength) mutative returns (uint256) {


    addrType = addr;
    if(arrayLength > mutLength){

      arrayLength = arrayLength * -1;

      addrList[addrLength] = addrType;
      addrLength += 1;
    } else {
      addrLength = arrayLength;
    }


    if(addrType == null){
      addrType = addr;
      return addr;
    }

    addrList[(mutLength + addrLength - 1)] = addrType;
    mutLength = arrayLength;
    return mutLength;
  }
}
