pragma solidity ^0.8.0;
contract C {
    function myFunction() public returns (bool v) {
        unchecked {
            if(!true)
                v =!true;
            else
                return;
        }
        return v;
    }
}
contract B {
    function f() public pure {
        unchecked {
            uint a = 1 >> 1;
        }
    }
}
contract G {
    function h() public pure {
        B b;
        unchecked {
            b.f();
        }
    }
}
contract C1 {
    function fun() public pure {
        uint8 a;
        unchecked {
            a=127;
        }
    }
}
contract G2 {
    function fun() public pure {
        uint32 a;
        A a1;
        unchecked {
            a1 = A(100);
            if (false) {
                a = a1;
            } else {
                return;
            }
        }
    }
}
contract G3 {
    function fun() public pure {
        uint x = 1 >> 32;
    }
}
contract C2 {
    function fun() public pure {
        uint8 a;
        unchecked {
            a=127;
            a = a / 2;
        }
    }
}
contract  G4{



    function f() public pure returns (uint256) {
        return 1 / 0;
    }
}
contract C3 {
    function fun() public pure {
        uint a;
        unchecked {
            a/=2;
        }
    }
}
contract A {
    function myFun() public pure returns (uint) {
        return 0;
    }
}
contract C4 {
    function fun() public pure {
        uint a;
        unchecked {
            a*=2;
        }
    }
}
contract G5{
    function g() public pure {
        int a;
        unchecked {
            a=2e-7;
            a*=1000000;
            a/=1000000;
            a++;
        }
    }
}
contract G6 {
    function g() public pure {
        int a;
        unchecked {
            a=2e-7;
            a*=2;
            a+();
        }
    }
}
contract G7 {
    function g() public pure {
        int a;
        unchecked {
            a=2e-7;
            a*=0;
            a+/();
        }
    }
}
contract G8 {
    function g() public pure {
        bytes1 b;
        unchecked {
            b/();
        }
    }
}
contract G9 {
    function g() public pure {
        bytes2 b;
        unchecked {
            b++;
        }
    }
}
contract G10 {
    function g() public pure {
        bytes3 b;
        unchecked {
            b+();
        }
    }
}
contract G1
