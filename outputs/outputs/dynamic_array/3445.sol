pragma solidity ^0.8.0;
contract C1 {
    uint public c;
    uint[] public d;
    uint[] public e;
    function f() public {
        for (uint i = 0; i < 3; i++) {
            d[i] = d[i] + c;
        }
    }
}

pragma solidity ^0.8.0;
contract C {
    static function test0(uint[] memory a, uint[] memory b) public {
        a[0] = 3;
        for (uint i = 1; i < 3; i++) {
            a[i] = a[i] * a[i - 1];
        }
    }
    static function test1(uint[] memory a, uint[] memory b) public {
        a[0].sub(1);
        a[1] = 1;
    }
    function test(uint[] memory a, uint[] memory b) public {
        f0(b);
        f1(b);
    }
    function f(uint[] memory a, uint[] memory b) public {
    }
    function f0(uint[] memory a) public {
    }
    function f1(uint[] memory a) public {
    }
}
