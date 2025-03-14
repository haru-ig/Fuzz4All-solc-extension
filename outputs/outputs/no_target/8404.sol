pragma solidity ^0.8.0;
contract Unsafe2B {
    address a;
    uint8 _bts = 0x12;
    uint[] arr;
    string str;
    string _str1;
}

pragma solidity ^0.8.0;
contract Unsafe2C {
    address a;
    uint8 _bts = 0x12;
}
pragma solidity ^0.8.0;
contract Unsafe2D {
    address a;
    uint8 _bts;
   struct c {
      address a;
   } str;
}

pragma solidity ^0.8.0;
contract Unsafe2E {
    address a;
    uint8 _bts;
   struct c {
      address a;
   } b;
   struct c b;
}
