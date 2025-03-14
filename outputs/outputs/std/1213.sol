pragma solidity ^0.8.0;
address a1;
contract A4 {
   enum MyEnum {

      One,
      Two,
      THREE
   }

   MyEnum public a6;

   int internal a7;
}

pragma solidity ^0.8.0;
contract A4 {
   enum MyEnum {

      One,
      Two,
      THREE
   }
   MyEnum public a5;

   MyEnum a6;
   MyEnum public a7;
   constructor() {
       a6 = a5;
       a7 = a6;
   }
}
contract C5 {
   uint8 public a8;
   constructor() {
       a8 = 0;
   }
}
contract A5{
    address public a0;
    address public a1;
    mapping(address => bool) public knownAddresses;
    constructor() {
        assert(a0 = msg.sender);
        assert(knownAddresses[msg.sender] = true);
        assert(a1 == a0);
    }
    function get_bool() {
        assert(msg.sender == a1);
    }
    mapping(uint8 => bool) internal x;
    modifier notzero {
        assert((msg.sender!= 0) == x[msg.sender + 4]);
        _;
    }
}
