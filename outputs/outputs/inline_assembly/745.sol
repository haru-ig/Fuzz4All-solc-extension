pragma solidity ^0.8.0;
contract Mutator17 {
 mapping(uint =>uint16) storageMap;

 function _store(uint key, uint16 val){
      storageMap[key] = val;
 }
 function testMethod(uint a, uint  b, uint c) public {
      if (a + b == c) {
 _store(a, storageMap[b]);
     }
 }
}
contract Mutator18 {
 mapping(uint =>uint8) storageMap;

 function _store(uint key, uint8 val){
      storageMap[key] = val;
 }

 function testMethod(uint a, uint  b, uint c) public {
      if (a + b == c) {
 _store(a, storageMap[b]);
     } else {
 _store(a, storageMap[c]);
     }
 }
}




pragma solidity ^0.8.0;
