pragma solidity ^0.8.0;
contract Array
{
    uint[] private b;
    function m1() public { b.push(); }
    function m2() public returns (uint) { return b[0]; }
    function m3() public returns (uint) { return b[120000]; }
}

pragma solidity ^0.8.0;
contract Convert
{
    function m1() public returns (uint) { return 1; }
    function m2(uint t) public returns (bool) { return t > 99; }
}

pragma solidity ^0.8.0;
contract Math
{
    uint add(uint a, uint b) internal pure returns (uint c) { c = a + b; }
    function m1(uint a, uint b) public pure returns (uint) { return 100*add(a,b); }
    uint sqrt(uint x) internal pure returns (uint z) { if (x!= 0) { z = x; uint y = x / 2 + 1; while (y < z) { z = y; y = x / z + 1; } } }
    uint power(uint x, uint y) internal pure returns (uint z) { if(y == 0) return 1; z = power(x, y / 2) * power(x, y % 2); }
}

pragma solidity ^0.8.0;
contract Memory
{
    uint[] a;
    uint[] b;
    function m1() public { a.push(1234); }
    function m2() public returns (uint[] memory) { return a; }
    function m3() public returns (uint[] memory) { return b; }
    function m4() public returns (uint[2] memory) { return [1, 2]; }
    function m5() public returns (uint[null] memory) { return null; }
}
pragma solidity ^0.8.0;
contract Multiprecision
{
    uint256[] a;
    function m1() public { a.push(123); }
    function m2() public returns (uint256) { return a[0]; }
    function m3() public { a[0] += 1; }
    function m4() public { a[16] -= 1.5; }
    function m5(uint y) public { a[0] += y; }
    function m6() public { a[x] = a[y] / a[x]; }
    function m7() public {
        uint256 x = a[x]; uint7
