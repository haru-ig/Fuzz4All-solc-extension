pragma solidity ^0.8.0;
contract OptimizedYulContract {
 uint internal x;
 uint internal y;
 uint private z;
 uint constant c = 0x00;

  function optim_assign(uint a) public {
    z = a;
  }

    function optim_mul() public {
        x = mul(2,x,y);
        y = mul(y,2,x);
        x = add(x, c);
        z = add(x, x);
    }

    function mul(uint a, uint b, uint c) internal pure returns (uint){
      uint hi = 0;
      while (b > 0) {
        if (b % 2!= 0) {
          lo = a;
          hi += lo * a;
        }
        a = a * a;
        b /= 2;
      }
      return hi;
    }

    function optim_add() public {
        y = add(y, c);
        x = add(x, y);
    }

    function add(uint a, uint b) internal pure returns (uint) {
        a += b;
        if (a >= 1 + c) {
          return 1 + c;
        } else {
          return a;
        }
    }
}
