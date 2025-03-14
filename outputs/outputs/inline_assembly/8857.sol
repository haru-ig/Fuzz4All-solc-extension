pragma solidity ^0.8.0;
contract Test
{
    uint x = 20;
    uint private z = 1;

    uint a;

    function test() public {
        a *= z;
    }
}
contract Test
{
    uint x = 20;
    uint z;

    function test() public {
        z = 3;
        x /= z;



    }
}
contract Test
{
    uint x = 20;
    uint z;

    function test() public {
        x *= z;

        z = 3;
        x *= z;
    }
}
contract Test
{
    uint x = 20;
    uint z = 0;

    uint a;

    uint public b;

    event Log1(address);

    function test() public {
        a = x / z;
        emit Log1(msg.sender);



    }
}
contract Test
{
    uint x = 20;
    uint z = 0;

    uint a;

    uint public b;

    function test() public {
        a = x / z;
        a = a * z;
        emit Log1(msg.sender);


    }
}
contract Test
{
    uint x = 20;
    uint z = 0;

    uint a;

    uint public b;

    function test() public {
        a = z * (x - a);
        uint x1;
        (x1, a) = (z, a);



    }
}
contract Test
{
    uint x;
    uint z;

    uint a;

    uint public b;

    uint public c;

    function test() public {

        uint e0 = a + (x = z) + (x *= z) + (x /= z);












        c = (x = z >> 1);

        b = a + x;
        b = b * z;

        b *= z;
        b = z;
        emit Log1(z);

        b++;
