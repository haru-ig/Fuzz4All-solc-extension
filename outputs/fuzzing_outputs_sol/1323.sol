pragma solidity ^0.8.0;
contract Contract {
   uint[] public data;
   uint[] public data2;
   uint public result;
   constructor() public {
       data.push(0);
   }
   function data1() public {
       data.push(1);
   }
   function data2() public {
       data2.push(2);

       result = add(data2);
       data.push(result);
       uint a = 12;


   }
   function add(uint[] memory x) internal pure returns (uint) {
       uint[] memory _newData = new uint[](x.length);
       for (uint i = 0; i < x.length; i++) {
           _newData[i] = x[i] + 1;
       }
       uint[] memory _x2 = new uint[](x.length);
       return x.length;
   }
   function add2(uint[] memory x) internal pure returns (uint) {
       uint[] memory y = new uint[](x.length);
       for (uint i = 0; i < x.length; i++) {
           y[i] = uint(x[i] + 1);
       }
       return y.length;
   }
}
