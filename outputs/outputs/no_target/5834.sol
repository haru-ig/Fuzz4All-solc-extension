pragma solidity ^0.8.0;
contract C3 {
    uint private x;
    function setuint() public {
        uint x;
        assembly {
            x := x
        }
        x = 0x7FFF00FF;
    }
}
pragma solidity >=0.7 <0.8;
contract C3 {
    uint private x;
    function setuint() public {
        uint x;
        assembly {
            x := x
        }
        x = 0.5;
    }
}
contract C3 {
    uint private x;
    uint constant y = 0x7FFF00FF;
    function getuint() public view returns (uint) {
        uint x;
        assembly {
            x := x
        }
        return x;
    }
}
contract C3 {
    uint constant z;
}
contract C2 {
    function f() public view returns (uint) {
        return C3.getuint();
    }
}
contract C2 {
    uint public y;
    function f() public view returns (uint) {
        return C3.getuint();
    }
}
contract C1 {
    uint private y;
    function f() public returns (uint) {
        return C3.getuint();
    }
}
contract C1 {
    uint public z;
    function f() public {
        x = 0x7FFF00FF;
    }
}
contract C1 {
    uint private z;
    function f() public {
        x = 0.5;
    }
}
contract C1 {
    uint constant b;
    uint private c;
    function g() public {}
}

library C1 {
    function f() public {
        c = 0x7FFF00FF;
        b = 1;
    }
}
contract C {
    C1.f();
}
contract C {
    uint public x;
    function f() public view returns (uint) {
        return C1.b;
    }
    function g() public view returns (uint) {
        return C3.getuint() + x + 1;
    }
    function h() public view returns (uint) {
        return C.f();
    }
}
contract C {
    uint constant z;
}
contract C {
    uint private y;
    function f() public {
        x = 0x7FFF00FF;
    }
}
contract C {
    uint public z;
    function f() public {
        y = 1;
    }
}
contract C {
    uint constant w;
}
contract C {
    uint private z;
}
contract C {
    uint constant b;
    uint private c;
    function g() public {}
}
library C {
    uint constant z;
}
contract C {
    uint private w;
    function f() public {
        x = 0x7FFF00FF
