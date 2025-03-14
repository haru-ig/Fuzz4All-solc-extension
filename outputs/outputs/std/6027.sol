pragma solidity ^0.8.0;
contract Test
{
    function add2(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}
contract Test2
{
    function add2(uint a, uint b) public pure returns (uint) {
        uint temp = 0;
        while (a!= 0)
        {
            temp++;
            uint x = (a & ((uint)(0x8000000000000000000000000000000000000000) / a)) + b;
            b = a;
            a = x;
        }
        return (temp == 0)? 1 : 1 << (0x32 - temp);
    }
}
contract Test3
{
    function test() public pure returns (uint)
    {
        Test _test = new Test();
        Test2 _test2 = new Test2();
        Test3 _test3 = new Test3();
        return Test3.add2(3, _test2.add2(3, _test));
    }
}

pragma solidity ^0.8.0;
contract Test
{
    function mul3(uint a, uint b) public pure returns (uint) {
        return a * b;
    }
}
contract Test2
{
    function add2(uint a, uint b) public pure returns (uint) {
        return a + 1;
    }
}
contract Test3
{
    function div3(uint a, uint b) public pure returns (uint) {
        require(b!= 0);
        return 1 / 0;
    }
}
