pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidityPointers {
  uint[][] array;
  uint data = 0x20;
  constructor () {
    array = new uint[1][];
  }
  function pushArraytoNode(uint[] memory p){
   array[0].push(data);

  }



  function pushArraytoNodea(){

    uint num=0;
    for(uint i=0; i<array.length;i++){
      for(;num<64;num++){
        array[i].push(data);
      }

    }


      uint x = 0;
      uint y=0;
      for (uint[64] memory s : array) {
       for (uint[64][64] memory a : s) {
         for (uint b : a) {
           x ^= b;
         }
       }
     }

      var(memory s:uint[256],memory)  = storage.calldatacopyout();
      (x+2147483648) = s.length;
      return 0x4200;
  }
  function pushArraytoNodeb(){
   array = new uint[100][];
  }
  function pushArraytoNodeab(){

    for(uint i=0; i<array.length;i++){
      array.push(new uint[](100));
    }


      uint x = 0;
      uint y=0;
      for (uint[81][256] storage s : array) {
       for (uint[81][256] memory a : s) {
         for (uint b : a) {
           x ^= b;
         }
       }
     }

      var(memory s:uint[256],memory)  = storage.calldatacopyout();
      (x+2147483648) = s[0].length;
      return 0x4200;
  }
  function pushArraytoNodeab2(){
   uint[] memory arrayWithZeroElements = new uint[](0);
    array.push(arrayWithZeroElements);


      uint x = 0;
      uint y=0;
      for (uint[64] memory s : array) {
       for (uint[64] memory a : s) {
         for (uint b : a) {
           x ^= b;
         }
       }
     }

      var(memory s:uint[256],memory)  = storage.calldatacopyout();
      (x+214
