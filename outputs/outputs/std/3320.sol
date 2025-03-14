pragma solidity ^0.8.0;
contract Convert{

    function toBytes96(uint96[] memory myArr) internal pure returns(bytes32[] memory) {
        bytes32[] memory myArrBytes = new bytes32[](myArr.length);
        for(uint256 i = 0; i < 4; i++){
            myArrBytes[i] = bytes32(myArr[i]);
        }
        return myArrBytes;
    }
}
contract Math{
   int256 x;
   int256 y;


   function add(int256 x) public pure returns(int256 sum) {
      sum = x + x;
    }

   function add(int256 x, int256 y) public pure returns(int256 sum) {
      sum = x + y;
   }

   function sub(int256 x, int256 y) public pure returns(int256 difference) {
      difference = x - y;
   }

   function mul(int256 x, int256 y) public pure returns(int256 product) {
      product = x * y;
   }

   function div(int256 x, int256 y) public pure returns(int256 quotient) {
      quotient = x / y;
   }


   function lt(int256 x, int256 y) public pure returns (bool) { return (x < y); }
   functionlte(int256 x, int256 y) public pure returns (bool) { return (x <= y); }
   functioneq(int256 x, int256 y) public pure returns (bool) { return (x == y); }
   functiongt(int256 x, int256 y) public pure returns (bool) { return (x > y); }
   functiongte(int256 x, int256 y) public pure returns (bool) { return (x >= y); }
}
contract Memory{
   uint256[2] a;
   uint256[2] memory b;
   uint256[2,3] c;
   uint256[2,3] memory d;
}
contract Multiprecision{
   uint256[9] precision;


   function add(uint256 x, uint256 y) public pure returns(uint256 sum) {
      sum = x + y;
   }

   function add(uint256 x, uint256[9] y) public pure returns(uint256 sum) {
      uint256 i = 0;
      while(i < 9){
         sum = sum + y[i] + x;
         i++;
      }
   }

   function sub(uint256 x, uint256 y) public pure returns(uint256 difference) {
      difference = x - y;
   }

   function sub(uint256 x, uint256[9] y) public pure returns(uint
