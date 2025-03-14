pragma solidity ^0.8.0;
contract mutators_v10_v2_0__1
{
   constructor(uint) public{ }
   function equivalent() public{ }
   uint[10] array_v10v;
   uint16[10] array_v10w;
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract testaddress_v10_0
{
   constructor(address) public{ }
   function equivalent() public{ emit Log(); }
   function log() public{ emit Log0(); }
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract testaddress_v10_1
{
   constructor(address) public{ }
   function equivalent() public{ emit Log(); }
   function log() public{ emit Log0(uint160()); }
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract testaddress_v10_2
{
   constructor(address) public{ }
   function equivalent() public{ emit Log(); }
   function log() public{ emit Log0(uint160(uint160())); }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract testaddress_v10_3
{
   constructor(address) public{ }
   function equivalent() public{ emit Log(); }
   function log() public{ while (true){ emit Log0(uint160(uint160())); } }
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract testaddress_v10_4
{
   constructor(address) public{ }
   function equivalent() public{ emit Log(); }
   function log() public{ { for(uint i=0;i<10;i++){ emit Log0(uint160()); } } return uint160(10); }
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract
