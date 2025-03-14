pragma solidity ^0.8.0;
contract Mutant {
    uint256 x;
    address a;
    uint256 a_;
    uint256 b;
    function update_xprev(uint256 xprev) public {
      xprev1=xprev1+xprev;
      xprev = xprev;
    }
    constructor (uint256 b) public {
      x = 1 + 100 + b + 10*5 + 1;
    }
}

pragma solidity ^0.8.0;
contract Mutant {
    uint256 c;
    uint256 x;
    address a;
    uint256 a_;
    uint256 y;
    uint256 mutx;
    uint256 mutc;
    constructor (uint256 c, uint256 e, uint256 d, uint256 mutx) public {

      x= 1 + 10+100*d + mutx;
      xprev=0;
      c_init=y+2+10*d + c;
      a_ = y-y*1;
      c=c;
      mutx=mutx;
      d = d;
    }
    function mutate(uint256 mutc) public {
      mutx=0;
      c=c+mutc;
    }
    function increase_d(uint256 h) public {
      d+=h;
    }
}
