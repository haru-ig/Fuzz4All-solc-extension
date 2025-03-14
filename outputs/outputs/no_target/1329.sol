pragma solidity ^0.8.0;


contract Mutate_0002 {
  bytes public m;

  constructor () public {
    m = new bytes(3);
  }


  bytes public m_check;

  constructor () public {
    m_check = new bytes(3);
  }


  constructor () public {
    m_check = 0x123400000000000000000000000000000000000000000000000000000000;
  }
}
