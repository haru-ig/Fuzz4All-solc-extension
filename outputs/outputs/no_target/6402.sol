pragma solidity ^0.8.0;
contract mutation {
  function modify(uint32 _a) public {
    uint8 d = _a % 2;


    assembly {
      d_new := a, b := a
    }






    d = 0;











    _a = d_new;
  }

  function simple(uint _a) public {















  }
}
