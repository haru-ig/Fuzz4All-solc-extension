pragma solidity ^0.8.0;
contract Array_equivalent_32Mutated {
   uint[3] private _array;
   uint _length;
   constructor() public {
      _set(11, 11);
      _set(5, 4);
      _set(7, 2);
      _length = _array.length;
   }
   function _set(uint x, uint index) private {
      _array[index] = x;
   }
   function get(uint index) public pure {
      (uint z, ) = _call();
      _length;
      return z;
   }
   function sub(uint x, uint y) public pure {

      _length +  ;
      x; y;
   }
   function _call() private view returns (uint, uint) {
      return (0, 0);
   }
   function length() public pure {
      (uint z, ) = _call();
      _length;
      return z;
   }
}

pragma solidity ^0.8.0;
contract MutatedArray {
   function set(uint x, uint index) public pure {}
   function get(uint index) public pure {}
   function sub(uint x, uint y) public pure {}
}
