pragma solidity ^0.8.0;
contract Array {
   uint[] array;
   function min(uint _x) public view returns (uint) {
      if(_x >= array[0]) return _x;
      return array[0];
   }
   function max(uint _x) public view returns (uint) {
      uint max_num = array[0];
      for(uint i = 1; i <= array.length; ++i)
      {
          if (array[i] > max_num) max_num = array[i];
      }
      return max_num;
   }
   function sum(uint[] storage storage) public view returns (uint)
   {
       uint sum = array[0];
       for(uint i = 1; i <= array.length; ++i)
       {
           sum = sum + array[i];
       }
       return sum;
   }
   function set(uint i, uint value) public {
       if(i < array.length) {
           array[i] = value;
       }
   }
   function get(uint i) public view returns (uint)
   {
       if(i < array.length) return array[i];
       return 0;
   }
}.
