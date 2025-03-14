pragma solidity ^0.8.0;
contract Arithmetic
{
    function add(uint a, uint b) public pure returns (uint)
    {return a + b;}
    function add(uint a, uint b, uint c) public pure returns (uint)
    {return a + b + c;}
    function add_mod(uint a, uint b, uint c) public returns (uint)
    {return c - (a + b);}
    function add_overflow(uint a, uint b, uint c, uint d) public pure
    {
        if (c > a + b + (a > b? -1 : 0)){

            if (d > -b - c - (b > c?-1:0)){

            }

        }
    }
    function minus(uint a, uint b) public pure returns (uint)
    {return a - b;}
    function modulus(uint a, uint b) public view returns (uint)
    {return a % b;}
    function lesser(uint a, uint b) public view returns (bool)
    {return a < b;}
    function greater(uint a, uint b) public view returns (bool)
    {return a > b;}

    function lesser_equal(uint a, uint b) public view returns (bool)
    {return a <= b;}
    function greater_equal(uint a, uint b) public view returns (bool)
    {return a >= b;}

    function modulo(uint a, uint b) public pure returns (uint)
    {return a % b;}
}
library Array
{
    using Arithmetic for uint;
    function get(uint[] storage arr, uint idx) public view returns (uint)
    {return arr[idx];}
    function set(uint[] storage arr, uint idx, uint a) public view returns (uint)
    {return (uint)arr.length; set_to(a, idx); }
    function set_to(uint a, uint idx) public view returns ()
    {arr[idx] = a;}
    function empty(uint[] storage) public view returns (bool)
    {return arr.length == 0;}
    function push(uint[] storage arr, uint a) public
    {set_to(a, arr.length); set(arr, arr.length, 0);}
    function concat(uint[] arrs) public view returns (uint[] memory)
    {
        uint[] memory result = new uint[]((uint)(2 * arrs.length));
        for (uint i = 0; i < arrs.length; ++i) result[2*i] = arrs[i];
        return result;
    }
    function concat(uint[][] arrs) public view returns (uint[] memory)
    {
        uint[] memory result = new uint[]((uint)(2 * arrs.length));
        for (uint i = 0; i < arrs.length; ++i) result[2 * i] = arrs[i][0];
        for (uint i = 0; i < arrs.length; ++i) result[2 * i + 1] =
