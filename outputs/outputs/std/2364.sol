pragma solidity ^0.8.0;

contract Modular
{

    modifier senderIsNot0(address addr) {
      require(addr!= 0, "0 Address");
      _;
    }

    function subtract1(int a) public view returns(int)
    {
      int r = a - 1;
      return r;
    }

    function multiplyAdd2(int a, int b) public view returns(int)
    {
        int r = a * b + 5;
        return r;
    }
}
