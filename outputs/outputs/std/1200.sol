pragma solidity ^0.8.0;

contract Array {
   uint16[] public array;




   function length() public view returns (uint16) {
      return (array.length);
   }



   function () public payable {
      uint16 _newLength;
      uint i;
      for (i = 0; i < array.length; i++) {
         array[i] = 0;
      }
      _newLength = i + 1;
      array = new uint16[](_newLength);
   }



   function add(uint16 _number) public {
      uint16 _newLength = array.length;
      array[_newLength] = _number;
      if(_newLength == 0)
       array[_newLength] = _number;
   }



   function get(uint16 _index) public view returns (uint16){
      return array[_index];
   }




   static function getLength(uint16[] memory _arr) public view returns (uint16) {
      return _arr.length;
   }


   static function getMax(uint16[] memory _arr) public view returns (uint16) {
      uint16 _result = 0;
      uint16 _max = 0;
      uint16 _index;
      for (uint16 i = 0; i < _arr.length - 1; i++) {
         _index = _arr[i];
         if (_index > _max) {
             _max = _index;
         }
      }
      return (_max);
   }


   static function getMin(uint16[] memory _arr) public view returns (uint16) {
      uint16 _result = 0;
      uint16 _min = 0;
      uint16 _index;
      for (uint16 i = 0; i < _arr.length - 1; i++) {
         _result = _result + _arr[i];
         if (_result < _min) {
             _min = _result;
         }
      }
      return (_min);
   }


   static function getSum(uint16[] memory _arr) public view returns (uint16) {
      uint16 _result = 0;
      for (uint16 i = 0; i < _arr.length - 1; i++) {
         _result = _result + _arr[i];
      }
      return (_result);
   }


   static function toString
