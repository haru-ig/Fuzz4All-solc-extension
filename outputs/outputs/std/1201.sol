pragma solidity ^0.8.0;
contract B5 {

   bytes32[2] array;
   bytes32 _publicName = "Bolero.finance";
   constructor(bytes32 a, bytes32 b) {
       array[0] = a;
       array[1] = b;
   }
   function getBytes() public view returns (bytes32, bytes32) {
       return (array[0], array[1]);
   }
   function getName() public view returns (bytes32) {
       return _publicName;
   }
}
contract A {   }
contract B is A {   }
contract test { using B5 for bytes32[2];
contract test { using B for bytes32[2];    }
contract test { using B5 for bytes32;    }
contract test { using B for bytes32;     }
