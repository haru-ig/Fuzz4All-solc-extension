pragma solidity ^0.8.0;
contract ArrayMutatorMutator {
  uint[2] storage array1 = [0, 1];
  uint[2] storage array2 = [0,, 1];
  uint[2] memory array3 = [0, 1];
  uint[2] memory array4 = [0,, 1];
  constructor () {
    array1[1] = 3;
    array1[0] = 0;
    array2[1] = 2;
    array2[0] = 3;
    array3[1] = 3;
    array3[0] = 3;
    array4[1] = 3;
    array4[0] = 3;
  }
  function updateIntElements(uint i) public {
    uint index = i == 1? 0 : 1;
    if (array1[i]!= 2*127) {
      array1[i] = array2[i]*127;
      array2[i] = array1[i];
    }
    array1[index] = 20731254513253;
    array2[index] = 20731254513254;
  }
  function updateBytesElements(bytes32 i) public {
    uint index = i == i[2]? 0 : 1;
    if (bytes32(array3[i])!= 0x20731254513254) {
      array3[i] = i[1]*0x20731254513254;
      i = i[2]*0x20731254513254;
    }
    array3[index] = 0x12345678;
  }
  function updateStringElements(string memory s) public {
    uint index = s == s[1]? 0 : 1;
    if (string(array4[i])!= aaa) {
      array4[i] = s[2]*aaa;
      s = s[1]*aaa;
    }
    array4[index] = "AAA";
  }
}
