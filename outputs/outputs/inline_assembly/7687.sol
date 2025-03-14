pragma solidity ^0.8.0;
contract L21 {
   uint32 public constant value = 0xbd2b344401d8bd7d1733f9a0c2b2;
   mapping(uint => bool) public values;
   uint32 public lastValue;
   uint32 public lastNonce;
   address public sender;
   bool public isMalicious;
   uint32 public gasLimitIncrease;

   struct C {
       uint val;
       bool b;
    }

   mapping(address => C) externalStorage;



   function setAddress(address payable address_) public {
      sender = msg.sender;
   }

   function deposit() public {
      require(msg.sender == sender, 'invalid sender');
      externalStorage[msg.sender].val = msg.value;
      lastValue += msg.value;
   }



   function getMessage() public returns (uint) {
      require(msg.sender == sender, "Address not known");
      return msg.value;
   }

   function doSomething() public {
      uint32[] memory values = [0,value,45];

      C memory c;
      uint i;


      for (i = 0; i < (uint)4294967296; i += 4) {
         c.val = 1;
      }
      for (i = 0; i < (uint)4294967296; i += 4) {
         c.val = 2;
      }
      for (i = 0; i < (uint)4294967296; i += 4) {
         c.val = value;
      }

      for (i = 0; i < 4294967295; i++) {
         c.val = 1;
      }
      /*
      The following is a way of doing the loop in Solidity, as a non-local (to the next loop)
      C memory c; uint i; for (i = 0; i < (uint)4294967296; i += 4) {
          c.val = 1;
      }
      for (i = 0; i < (uint)4294967296; i
