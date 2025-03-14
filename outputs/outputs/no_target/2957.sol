pragma solidity ^0.8.0;

contract third7 is third6{


    constructor() public {
        a = 32;
        unchecked{
            b = 123;
            c = 153 + a;
            }
        }

    function call(uint x) public {

        a = 1 / 0;
        b = x + 1;
        unchecked{
            c = x - b;
            }
        }
   function call(uint x) public {

        a = uint(max(0, 4));
        b = x / b;
        unchecked{
            c = x - b;
            }
        }


    b = (uint(10) + 5) / 3;
    c = (uint(max(10, 0xC)) - 1) * (a + 1);
    b + 3 - b * (a - c + 1) + a * (a + 1) + a + 44 - b - a;
  function call(uint x) public {




        a = 42;
        b = 10;
        c = x / uint(a);
        }
    }
  function call(uint x) public {
    a = 2 / 10;
    b = a * b + c;
    c = b + 3 - c * (b + 1) - b / 2;
    uint d = c / -a;
    b = (b - d) * (513) - a;
    }
}
contract third8 is third7{

    constructor() public {a = 640;  }

    function call(uint x) public {
    a = x - 65536;
    b = x * a / 640;
    c = uint(a * (a - 1));
    }
}
contract third9{
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
}
