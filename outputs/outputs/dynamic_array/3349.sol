pragma solidity ^0.8.0;
interface I2b  {
    function use2() external;
}

pragma solidity ^0.8.0;
contract Comp3a {
   I2a public ifaceA;
   constructor( I2a in_I2a) public {
       ifaceA = in_I2a;
   }
   function use1() public {
     ifaceA.use();
   }
}

pragma solidity ^0.8.0;
contract Comp3b {
   mapping(address => address) storage I2BtoA;
   I2b public ifaceB;
   constructor( I2b in_I2b) public {
       ifaceB = in_I2b;
   }
   function use2() public {





     I2BtoA[ msg.sender ] = msg.sender;
     ifaceB.use2();
   }

   function use1() public {
     I2A( I2BtoA[ msg.sender ] ).use1();
   }
}
