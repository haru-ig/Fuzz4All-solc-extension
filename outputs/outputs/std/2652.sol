pragma solidity ^0.8.0;
contract Mutate2 {
  int32[] a;
  function mutationfunc() public {
    a[0] = -48;
    a[1] = int32(112);
    a[2] = 80;
    a[3] = int32(-77);
    a[5] = 48;
    a[6] = -48;
  }
}

pragma solidity ^0.8.0;
contract Array {
  int[] a;
  function mutationfunc() public {
    a[0] = -55;
    a[1] = int(112);
    a[2] = 64;
    a[3] = int(-125);
    a[5] = 24;
    a[6] = 32;
  }

  function findMin() public returns (int32)   {
    return Math.findMin(a) - int32(1);
  }
  function findMax() public returns (int32)   {
    return Math.findMax(a) - int32(1);
  }
  function findSum() public returns (int32)   {
    return a.reduce((sum, v) => sum + v) - int32(1);
  }
}
