pragma solidity ^0.8.0;
contract Array {
   uint[][] public array1;
   function func(uint e1, uint e2) public {
        array1.push(new uint[](2));
        array1[array1.length() - 1][0] = e1;
        array1[array1.length() - 1][1] = e2;
   }
}

pragma solidity ^0.8.0;
contract Array {
    uint length;
    uint[] public array2;
   uint[2] public one;
   uint[2] public two;
   uint[2] public three;
uint memory one1;
uint memory two1;
uint memory three2;
    constructor() {
    array2.push(new uint[](2));
    uint[] storage storage = array2[array2.length() - 1];
    storage[0] = one1;
    storage[1] = two1;
   }
}
