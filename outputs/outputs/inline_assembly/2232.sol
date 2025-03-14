pragma solidity ^0.8.0;
contract VersionOfTheNewerSemVer
{
    uint d;
    constructor() { d = 75; }
   function doItWithTheNewerSemanticVersion() public returns (uint) {
        return d / 65;
   } }


pragma solidity ^0.8.0;
contract Test191
{
    uint d = 43;
    constructor() public { uint d = 32; }
    function test1() public {

    }
}

pragma solidity ^0.8.0;
contract Test192
{
    uint[30] x;
    uint[20] y;
    uint[10] z;
    uint[5] t;
    uint[65535 - 100] u;
    uint[10] v;
    uint[3] w;
    function ()   {
        calldata memory input;
        assembly {
            input := mload(add(input, 32))
        }
        x[0] = input[0];
        x[1] = input[1];

        y[0] = input[2];
        y[1] = input[3];

        z[0] = input[4];
        z[1] = input[5];

        t[0] = input[6];
        t[1] = input[7];

        u[0] = input[8];
        u[1] = input[9];

        v[0] = input[10];
        v[1] = input[11];

        w[0] = input[12];
        w[1] = input[13];
    }

    function doIt(uint a, uint b, uint c) public {
        uint s = a + b;
        uint u = a * b - a;
        uint d = u * c;
        t[0] = s / 10;
        t[1] = s;
        t[2] = s / u;
        t[3] = (s / d);

        v[0] = a / s;
        v[1] = a % s;

        w[0] = a / d;
        w[1] = a % d;
    }
}

contract Test2
{
    function f() public
