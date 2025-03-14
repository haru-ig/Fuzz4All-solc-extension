pragma solidity ^0.8.0;
contract test51 {
  uint[] public arry;
  function test() public {
    uint[] memory arr = new uint[](1);
    arr[0] = 2;
  }
}
contract test52 {
  uint[] public arry;
  function test() public {
    uint[] memory arr = new uint[](1000);
    uint k = 0;
    for(; k < k; k++){
      uint[] memory x = new uint[](1);
      x[0] = 1;
      arr[k] = x;
    }
    uint[] memory foo = arry;
    uint i;
  }
}
contract test53 {
  struct Bar {
    uint a;
    uint b;
    uint c;
    uint d;
  }
  uint arry[3];
  function test() public {
    Bar[] memory arr = new Bar[](1000);
    uint k = 0;
    for(; k < k; k++){
      Bar x;
      Foo f;
      x.a = 1;
      x.b = 2;
      x.c = 3;
      x.d = 4;
      arr[k] = x;
      foo = arr;
    }
  }
  function test2() public {
    bar = 1;
  }
  uint bar;

  uint[] bla;

  uint[] foo;



  function arr()
    public
    pure
    returns (uint[] memory, uint[] memory, uint[2] memory)
  {
    uint[] memory y = new uint[3];
    y[0] = 1;
    y[1] = 2;
    y[2] = 3;
    uint[] memory p1 = new uint[](3);
    uint[] memory p2 = p1;
    p1[0] = 111;
    p1[1] = 222;
    p1[2] = 333;
    return (p1, p2, y);
  }
}
contract test54 {
  struct Bar {
    uint a;
    uint b;
    uint c;
    uint d;
  }
  uint[] public arry ;
  function test() public {
    Bar[] memory bar ;
  }
}
contract test55 {
  uint[] public arry;
  function test() public {
    uint[5] memory arr = new uint[](5);
  }
}
contract test56 {
  uint[] public arry;
  function test() public {
    uint[5] memory arr;
  }
}
contract test57 {
  struct Bar {
    uint a;
    uint b;
    uint c
