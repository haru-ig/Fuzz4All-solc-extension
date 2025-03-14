pragma solidity ^0.8.0;
contract Test47 {
    uint[] public dynArr1;
    uint dynArr2;
    constructor () public returns (uint y) {
        dynArr1[0] = 0;
    }
    function f10() public returns (uint x) {
      return 0;
    }
    function setTest2() public returns (uint x) {
      y = 1;
    }
    function test2() public {
      y = 2;
    }
}

pragma solidity ^0.8.0;
contract Test47 {
  uint[] public dynArr11;
  struct Inner { uint z; }
  struct S { uint x; }
  Inner[] public dynArr2;
  S[] public dynArr3;
  constructor () public returns (uint y) {
    dynArr11[0] = 0;

    dynArr2[0] = Inner(1);
    dynArr3.push(S(1));
    dynArr3.push(S(1));
  }
  function test4() public returns (uint z) {
    z = dynArr2[0].z;
    return z;
  }
  function test5() public returns (uint z) {
    return 0;
  }
}
