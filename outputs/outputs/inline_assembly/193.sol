pragma solidity ^0.8.0;
contract E7H {

  uint16 public x = 0xabcd;


  modifier G(address x){
    x;
    _;
  }

  function g(address x, uint count) public returns (int y) {
    if (count > 0) return 0;
    require(count >= 0, 'Count out of range');
    return g(x);
  }

  function x_set(uint count) public G(msg.sender) returns (bool success) {
    uint n = 3.5;

  }
  function x_add(uint16 x) public {

    x;
    x;
    x;

    msg.sender;
  }
  function x_mul(uint x) public {

    x;
    x;
    x_set(x);
    x_add(x);
  }
  function x_div(uint x) public {

    x;
    x;
  }
  function x_lsh(uint16 x) public {

    x;
    x;
    x_set(x);
  }
  function x_rsh(uint16 x) public {

    x;
    x;
    x_set(x);
  }
  function x_sub(uint16 x) public {

    x;
    x;
    x;

  }
}
