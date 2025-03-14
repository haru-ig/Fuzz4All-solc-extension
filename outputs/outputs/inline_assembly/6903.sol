pragma solidity ^0.8.0;
contract MutatedContactsExample164 {
   uint count;
   uint[] arr;
   constructor() {
     arr.push(0);
   }

   function increase() public {
     count = count + 1;
     arr[count] = array[count];
     arr[count - 1] += 1;
   }
}
contract MutatedContactsExample165 {
}
contract MutatedContactsExample166 {
}
