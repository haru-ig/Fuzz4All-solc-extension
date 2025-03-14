pragma solidity ^0.8.0;
contract mutators_v9_not_reverted
{
   constructor(uint) public{ }
   function emitsEvent() public pure{ }
   uint[9] array_v9;
}
contract mutators_v8_reverted
{
   constructor(uint) public{ }
   function emitsEvent() public pure{ }
   uint[8] array_v8;
}
contract mutators_v7_bad
{
   constructor(uint) public{ }
   function emitsEvent() public pure{ }
   uint[] array_v7;
}
contract mutators_v6_ok
{
   constructor(uint) public{ }
   function emitsEvent() public pure{ }
   uint[] array_v6;
}
contract mutators_v5_ok
{
   constructor(uint) public{ }
   function emitsEvent() public pure{ }
   uint[3][3] array_v5;
}
contract mutators_v4_good
{
   constructor(uint) public{ }
   function emitsEvent() public pure{ }
   uint[3][3][6] array_v4;
}
contract mutators_v3_good
{
   constructor(uint) public{ }
   function emitsEvent() public pure{ }
   uint[3][3][] array_v3;
}
contract mutators_v2_good
{
   constructor(uint) public{ }
   function emitsEvent() public pure{ }
   uint[][] array_v2;
}
contract mutators_v1_good
{
   constructor(uint) public{ }
   function emitsEvent() public pure{ }
   uint[][] array_v1;
}
contract mutators_v0_good
{
   constructor(uint) public{ }
   function emitsEvent() public pure{ }
   uint[][] array_v0;
}
