pragma solidity ^0.8.0;
contract Test52Mutant {
    uint _x;
    uint[18] memory _x2;
    constructor()public{
      _x = 1222;
    }
    function f() public returns (uint){
      _x2[0] = 1;
      uint _x;
      _x = _x + _x2[0];
      return _x;
    }
}
contract Test53Mutant {
    uint[] memory _x = new uint[](18);
    uint[3,5] memory a = uint[5]([1,2,3,45,6]);
    uint[9] memory b;
    uint[5] memory b2 = uint[3,5]([1,2,3,4567]);
    uint[8] memory a2;
    uint a3;
    uint[1] memory a32 = uint[1]([5]);
    address y;
    uint z;
    function f() public {
      b = a;
      a3 = _x[0];
      a = a2;
      _x[0] = _x[4];
      _x[0] = _x[1];
      _x[2] = _x2[0];
      _x2[0] = 10;
      _x2[0] = _x | _x | 1 | 0;
      a = b;
      a = b2;
      y = a;
      y = a32;
      z = y;
    }
}
contract Test54Mutant {
    function f() public {
      uint[2] memory a = uint[2]([5,5]);
      a[1] = 55;
      a[1] = _x ^ a[1];
      a = byte[2]([0,0]);
      a[0] = a[1];
    }
}
contract Test55Mutant {
    address[2] memory a;
    uint[19] memory a1 = uint[3]([5,6,4]);
    uint[1,3] memory a2 = uint[1,3]([1]);
    uint[1] memory a23 = uint[1](
