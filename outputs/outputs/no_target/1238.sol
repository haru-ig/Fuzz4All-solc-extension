pragma solidity ^0.8.0;
contract Compilation_07
{
    function  set(
        uint w1,
        uint w2,
        uint w3
    )
        public
    {

      uint t1;
      t1 = w2;

      (t1) = w1;
    }
}

contract Compilation_08
{
    function  set(
        uint w1,
        uint w2,
        uint w3
    )
        public
    {

      (uint32) = w2;

      (uint32) = w1;
    }
}

contract Compilation_09
{
    function  set(
        uint w1,
        uint w2,
        uint w3
    )
        public
    {

      uint256 t0;
      uint256 t1;
      (t1, t0) = (w2, w1);
    }

    function set(uint w) public
    {
        return w;
    }
}
