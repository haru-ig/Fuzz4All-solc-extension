pragma solidity ^0.8.0;
contract W1 {
    uint d;
    function update() public {
       d = 1;
    }
}
pragma solidity ^0.8.0;
contract W {
    uint d;
    function update() public {
      d = d + d;
    }
}
pragma solidity ^0.8.0;
contract W {
    uint d;
    function update() public {
        d++;
    }
}

pragma solidity ^0.8.0;
contract P {
    uint256 a;
    modifier x(uint256 _x) {
        a = _x;
        _;
    }
    uint256 b;
    function x(uint256 _x) public x(_x) returns (uint256) {
        uint256 a1 = a ^ b;
        uint256 a2 = a;
        uint256 a3 = a ^ a;
        uint256 a4 = b ^ b ^ b;
        uint256 a5 = a ^ a ^ b;
        uint256 a6 = a ^ b ^ b ^ b ^ b ^ b ^ b;
        uint256 b1 = a ^ b ^ b ^ b ^ b ^ b ^ b ^ b ^ b;

        uint256 h = a2;
        while(a2 > 0) {
           uint256 t = b1;
           a1 = a6;
           b = h;
           h = a4;
           a6 = t;
           t = b1;
           b1 = a1;
           a1 = a6;
           a6 = t;
           a2 >>= 1;
        }

        return x(a1);
    }
}


contract Test {
    function run() public {
        W w = new W();

        w.update();
        W1 w2 = new W1();
       w2.update();
    }
}
