pragma solidity ^0.8.0;
contract K {
    function m(uint256 x) public pure {
      uint256 y = x;
    }
}
contract X {
    uint256 f = m;
}
contract Y {
    uint256 f = X.f;
}
contract P {
    uint i;
    function Y() {}
}
contract P2 {
    uint i;
    function P() public {
      Y y;
    }
}
contract P3 {
    uint256 i;
    constructor(uint256 y) public {
      P2 p;
    }
}
contract R {
    using P3 for P3;
    function h() public pure {
      P2 p2;
      uint256 i;
      y = r;
    }
}
contract P4 {
    uint h;
}
contract P5 {
    uint256 x;
    uint256 r;
    function x(uint x) public {
      if (get(true)) {
        x = r;
      }
    }
}
contract P6 {
    uint256 x;
    uint256 p;
    function p() public {
      p(x);
    }
    function p(uint x) public {
      x(x + 8);
    }
}
contract P7 {
    uint256 x;
    uint256 g();
    constructor(uint256 y) public {
      g(x);
    }
    function g(uint x) public {
      x(r);
    }
}
contract P8 {
    P5 pc5;
    uint256 x;
    uint256 p;
    uint256 r;
    constructor(uint256 x) public {
      pc5.x(r);
    }
    function p() public {
      p();
    }
    function call() public payable {
      pc5.x(r);
    }
}
contract P9 {
    P6 pc6;
    uint256 x;
    uint256 p;
    uint256 r;
    constructor(uint256 x) public {
      pc6.p();
      p(x);
    }
    function p(uint x) public {
      x(x + 8);
    }
    function call() public payable {
      p(r);
    }
}
contract P9a {
    P9 p9;
    uint256 x;
    uint256 p;
    uint256 r;
    constructor(uint256 x) public {
      p9.p(x);
    }
    function p(uint x) public {
      x(x + 8);
    }
    function call() public payable {
      p(r);
    }
}
contract P9b {
    P9a p9
