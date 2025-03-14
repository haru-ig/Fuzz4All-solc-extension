pragma solidity ^0.8.0;
contract Test52Mutant {
   uint[11] m;
   function f() public{
      uint _m;

      uint _index = 5;
      _m = m[6];
      m[5]=3;
      m[_index]=8;
      m[_index]=22;

      uint _value = m[_index];
      m[_index]=m[_index].add(3);
      _m = m[_index].add(3)/3;
      m[_index]=m[_index].sub(2);
      _index--;
      _m = m[_index].add(3)/3;
      m[_index]=m[_index].sub(3);
      m[_index]=m[_index].sub(_m);
      _m = m[_index].add(3)/3;
      m[_index]=m[_index].sub(_m);
      m[_index]=m[_index].sub(_m);
      _m = m[_index].add(_m);
   }
}
