pragma solidity ^0.8.0;
contract Test {
    function change(uint x) public view {
      x++;
      x--;
    }

    function change(uint x, uint y) public {
      x++;
      x -= (x - 1) % 20 * 3;
      x *= (x + y);
      x -= 50 % 4;
      x -= 18 % 5;
      x -= a;
      x -= (uint(a) -= b);
      x -= 88;
    }

    function change(uint x, uint y, uint z) public view {
      x++;
    }

    function change(uint32, uint32, uint32 a) public {
      a = 0;
      a -= 1;
      a += x;
      a -= 3 % 6;
      a -= (uint(a) -= b);
    }


}
