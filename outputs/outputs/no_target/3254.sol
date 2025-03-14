pragma solidity ^0.8.0;
contract one
{
    constructor(uint m_) public
    {
        m_ = m_;
    }
    uint public m_;
}
pragma solidity ^0.8.0;
contract two
{
    constructor(uint n_) public
    {
        n_ = n_;
    }
    uint public n_;
}
pragma solidity ^0.8.0;
contract three
{
    function __() internal pure returns (int)
    {
        return 2147483647;
    }
    function g() virtual public pure returns (int)
    {
        return 3000;
    }
}
pragma solidity ^0.8.0;
contract four
{
    constructor(uint m_, uint n_, uint o_) public
    {
        m_ = m_;
        n_ = n_;
        o_ = o_;
    }
    uint public m_;
    uint public n_;
    uint public o_;
}

pragma solidity ^0.8.0;
contract five
{
   constructor () public
   {
   }
   function f() public pure
   {
   	require(m_ < n_);
   }
   function g(uint id, int a) public pure
   {
     	require(id < n_);
     	require(a >= 0);
   }
   function h(uint c, uint d, uint e) public pure
   {
     	require(id_a == c);
     	require(id_b == d);
     	require(id_c == e);
   }
   function i(bool s, uint x) public pure
   {
     	require(s);
     	require(x < 4294967297);
   }
   function j(uint a, uint b, uint c) public pure
   {
     	require(id_a == a);
     	require(id_b == b);
     	require(id_c == c);
   }
}
pragma solidity ^0.8.0;
contract six
{
    constructor(uint f_) public
    {
        a = f_;
    }
    address private a;
}
