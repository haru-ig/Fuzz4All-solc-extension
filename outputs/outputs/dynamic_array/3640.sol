pragma solidity ^0.8.0;
contract D {
    uint256 a;
    mapping(uint256 => uint256) public b;
    function e() public {
        a = 1;
        a += 1;
        uint256 calldataSizeA;
        if (solidity.delegatecall(msg.data)) {
            calldataSizeA = msg.data.length;
        }
        a += calldataSizeA;
    }
    function f() public {
        a = 2;
        a += b[1];
        uint256 calldataSizeA;
        if (solidity.delegatecall(msg.data)) {
            calldataSizeA = msg.data.length;
        }
        a += calldataSizeA;
        b[2] = 3;
        a += msg.value;
    }
    function g() public {
        a = 3;
        a += b[2];
        uint256 calldataSizeA;
        if (solidity.delegatecall(msg.data)) {
            calldataSizeA = msg.data.length;
        }
        a += calldataSizeA;
        b[3] = 4;
        a += msg.value;
    }
    constructor() public {
        A.d.value(address(this).balance)();
    }
}
contract A {
    uint256 a;
    function d() internal {
        a = 1;
    }
    function e() public {
        a = 2;
    }
}

pragma solidity ^0.8.0;
contract G {
    D public c;
    function g() public {
        c.c.a += 5;
    }
}

pragma solidity ^0.8.0;
contract G {
    D public d;
    mapping(uint256 => uint256) public c;
    function h() public {
        d.c.d.value(address(this).balance)();
    }
    constructor() public {
        B.e.value(address(this).balance)();
    }
}
contract B {
    uint256 a;
    function f() internal {
        a = 1;
    }
    function g() public {
        a = 2;
    }
}
/* Please create a program to read a
