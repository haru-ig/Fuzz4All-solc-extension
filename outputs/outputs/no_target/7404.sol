pragma solidity ^0.8.0;
contract Test
{
 constructor() public
{
 revert("I love Ethereum!!!");
}
}

pragma solidity ^0.8.0;
contract Test
{
 function test0() public
{
 address a;
 assembly {
 a := 0
 }
 assert(a==0);
}
}

pragma solidity ^0.8.0;
contract Test
{
 error x{string m;} constructor() public
{
 assembly{x:=m}
 }
}

pragma solidity ^0.8.0;
contract Test
{
 function test0() public
{
 address a = address(uint(-6));
 assembly{a:=m}
 }
}

pragma solidity ^0.8.0;
contract Test
{
 modifier owneronly()
 {
 require(msg.sender==owner);
 _;
 }
 address owner;
 constructor() public
{
 owner = msg.sender;
 }
 modifier onlyowner
 {
 require(msg.sender==owner);
 _;
 }
 function test0() public
{
 owneronly{string m;}(owner);
}
}

pragma solidity ^0.8.0;
contract Test
{
 modifier owneronly()
 {
 require(msg.sender==owner);
 _;
 }
 address public static owner;
 constructor() public
{
 owner = msg.sender;
 }
 modifier onlyowner
 {
 require(msg.sender==owner);
 _;
 }
 function test0() public
{
 owneronly{string m;}(owner);
}
}

pragma solidity ^0.8.0;
contract Test
{
 modifier owneronly()
 {
 require(msg.sender==owner);
 _;
 }
 address public static owner;
 modifier onlyowner
 {
 require(msg.sender==owner);
 _;
 }
 function test0() public
{
 owneronly{string m;}(owner);
}
}


pragma solidity ^0.8.14;
