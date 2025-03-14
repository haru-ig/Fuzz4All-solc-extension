pragma solidity ^0.8.0;
contract SolidityAssemblyExample is IMutatedSolidityAssemblyExample, ISolidityAssemblyExample {
  uint public a;

  constructor(uint a_) public {
   uint a1 = 3;
  }

  function a(uint Z) external {
    a = Z;
  }
}
contract MutatedSolidityAssemblyExample {
    function a(uint Z) public {
     MutatedSolidityAssemblyExample _x;
     _x.a(3);
    }
}
contract SolidityAssemblyExample_2 {
    uint public a;

    function f() view public {
        a = 4;
    }
    function g() public {
        emit LogEvent(a);
    }
    function h() public {
        f();
    }
    function LogEvent(uint b) public {
        assembly {
            mstore(0xc1,b)


        }
    }
}
contract SolidityAssemblyExample_3 {
    uint public a;

    function f() view public {
        a = 4;
    }
    function g() public {
        emit LogEvent(a);
    }
    function h() public {
        f();
    }
    function LogEvent(uint b) public {
        assembly {
            mstore(0xc1,b)



        }
    }
}
contract SolidityAssemblyExample_4 {
    uint public a;

    function f() view public {
        a = 4;
    }
    function g() public {
        emit LogEvent(a);
    }
    function h() public {
        f();
    }
    function LogEvent(uint b) public {
        assembly {
            mstore16(0x0,b)

            mstore(0xd1,b)


        }
    }
}
contract SolidityAssemblyExample_5 {
