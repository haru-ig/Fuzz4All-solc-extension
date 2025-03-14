pragma solidity ^0.8.0;
contract SemanticMutation16
{
    function a(int128 n) public pure returns(int128)
    {
        return a_impl(n, 0);
    }
    function a_impl(int128 n, uint x) internal pure returns(int128)
    {
        return x*n;
    }
    function b(int128 n) public pure returns(int128)
    {
        return b_impl(-n);
    }
    function b_impl(int128 x) internal pure returns(int128)
    {
        return -x;
    }
    function c(int128 n) public pure returns(int128)
    {
        return c_impl(-n);
    }
    function c_impl(int128 x) internal pure returns(int128)
    {
        return -x;
    }
}

pragma solidity ^0.8.0;
 contract SemanticMutation17
{
    function a(int128 n) public pure returns(byte)
    {
        return a_impl(n, 0);
    }
    function a_impl(int128 n, uint x) internal pure returns(byte)
    {
        return byte(x*n);
    }
    function b(int128 n) public pure returns(byte)
    {
        return b_impl(-n);
    }
    function b_impl(int128 x) internal pure returns(byte)
    {
        return byte(-x);
    }
    function c(int128 n) public pure returns(byte)
    {
        return c_impl(-n);
    }
    function c_impl(int128 x) internal pure returns(byte)
    {
        return byte(-x);
    }
}
function main(uint[] memory a) public
{
    a[0] = semantic(a[0
