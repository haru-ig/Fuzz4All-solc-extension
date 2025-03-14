pragma solidity ^0.8.0;
contract Caller {
    uint256 public constant my_addr = 0x0;
    function mutates1() public returns (uint)
        {require(msg.sender == msg.sender || msg.data.length == 0, "fail");uint z = 0;z = x+y;}
        function mutates2() public returns (uint)
        {require(msg.sender!= msg.sender || msg.data.length == 0, "fail");uint z = 0;z = x+y;}
        function mutates3() public returns (uint)
        {uint z = 0; z = a+b;}
        function mutates4() public returns (uint)
        {  x = a + 1;  y = 1;}
        function mutates5() public returns (uint)
        {  x = a; y = 1;  z = 1;}
        function mutates6() public returns (uint)
        {  uint  z = 0; z = x + y;  x = a + z;  y = z; z=x+y;}
        function mutates7() public returns (uint)
        {  x = a;  y = 1;  z = x + y;}
        function mutates8() public payable { x = a + 1;  y = 1;}
        function mutates9() public payable { x = a; y = 1;  z = x + y;}
        function mutates10() public payable {  uint  z = 0; z = x + y;  x = a + z;  y = z; z=x+y;}
        function mutates11() public returns (uint)
        { uint z = a + b; }
        function mutates12() public returns (uint) { uint z = x + y; }
    function modifyTest() public returns (uint)
        {x = x + y;  y = 0xff11; return x;}
        function modifyB7Mutate(uint256 x, uint y) pure public returns (uint) {
            y = 100;
            return 0x0;
        }
        function modifyB8Mutate(uint x, uint y) pure public returns (uint) {
            return 0x0;
        }
    function test() public {
        a = 10;
        a += 1;
        x = 10;
        y = 100;
        z = 10 + y;
        x = a + 1;
        y++;
    }
}
