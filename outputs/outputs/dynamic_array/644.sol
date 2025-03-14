pragma solidity ^0.8.0;
contract test58 {
  uint256 a = 1;
  address[1] private ca;
  function test() public returns (uint256) {
    ca.push(a);
    return (ca.length);
  }
}


pragma solidity ^0.8.0;
contract test59 {
  uint256[] arr;
  function test() public {
    for (uint256 i = 0; i < 4; i++){
      arr[i] = i+1;
      if (i == 3) {
        for (uint256 j = 0; j < 5; j++) {
          arr[i] = i+2;
        }
      }
    }
  }
}


 <fim_middle>pragma experimental SMTChecker;
contract test60 {
  uint256[1] private arr1;
  uint256[2] private arr2;
  uint32[2] private arr3;
  bytes32[2] private arr4;
  address[2] private arr5;
  function test() public {
    if (1 == 2)
      arr1.push(1234);
    arr2 = [1234,5678];
    arr3[0] = 0;
    arr4 = [""];
    arr5.push(0xfeed);
  }
}
contract test61 {
  uint256[1] private arr1;
  uint256[2] private arr2;
  uint32[2] private arr3;
  address[2] private arr4;
  function test() public {
