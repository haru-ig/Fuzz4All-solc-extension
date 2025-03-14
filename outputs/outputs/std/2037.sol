pragma solidity ^0.8.0;
contract Array_equivalent_64 {
   uint length_field;
   uint length;
   uint[] memory length_array;
   uint[] array;

   function set_length() public {
      length = length_field;
   }

   function get_the_length() public view returns (uint) {
      return length;
   }

   function append(uint the_integer) public {
      array.length = length + 1;

      array[length] = the_integer;
   }

   function remove(uint the_index) public {
      require(the_index < length);
      array[the_index] = array[length-1];
      if (the_index == (length-1)) {
         delete array[(length-1)];
      }

      array.length--;
      length = length - 1;
   }

   function set(uint the_index, uint the_value) public {
      array[the_index] = the_value;
   }

   function maximumIndex() public view returns (uint) {
      uint maxIndex = 0;

      uint i = 0;

      for(; i < length; i++) {
         if (array[i] > array[maxIndex]) {
            maxIndex = i;
         }
      }

      return maxIndex;
   }


   function maximumUnsignedIndex() public view returns (uint) {
      uint maxIndex = 0;

      for(uint i = 0; i < length; i++) {
         if (array[i] > array[maxIndex]) {
            maxIndex = array[i];
         }
      }

      return maxIndex;
   }
}
