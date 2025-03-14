pragma solidity ^0.8.0;
contract ModBase {
   uint lastInt_;
   uint lastStr_;
   uint random_;
   uint[] sarray_;
   function setIntArray(uint[] _array) public {
       sarray_ = _array;
  }
   function printIntArray() public view {
       for (uint i = 0; i < sarray_.length; i ++) {
          print(_intToString(sarray_[i]), "", i);
       }
  }
   function insert(uint _int,uint i) public {
       sarray_.insert(i,_int);
   }
   function pop() public {
       sarray_.pop();
   }
   function last() public returns (uint _last) {
       return (sarray_[sarray_.length == 0? 0 : sarray_.length-1]);
   }
}
