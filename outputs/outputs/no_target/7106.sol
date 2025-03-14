pragma solidity ^0.8.0;
contract A {
    function a() public pure { }
}
contract B {
    function b() public pure { }
}
contract C {
    function a() public pure { }
}
contract D {
    function c() public pure returns (uint) { return 0; }
}
contract E {
    function d() public pure returns (uint) { return 0; }
}
contract Test {
    contract F is A, B, C, D, E {
        event log0(uint, uint);
        event log1(uint, uint);
        event log2(uint, uint);
        event log3(uint);
        event log4(uint);
        function a(uint p1, uint p2, uint p3) public pure returns (bool, uint) {
            emit log0(p1, p2);
            return (true, 0);
        }
        function b() public pure returns (uint) {
            emit log1(0, 0);
            return 0;
        }
        function c(uint) public pure returns (uint) {
            emit log2(0, 0);
            return 0;
        }
        function d() public pure returns (uint) {
            return 2;
        }
        function e() public pure {
            emit log4(0);
            return;
        }
        function f() public pure {

            emit log0(0, 0);
            emit log1(0, 0);
            emit log2(0, 0);
            emit log3(0);
            emit log4(0);
            return;
        }
        function g() public pure returns (uint) {
            return 1;
        }
        function h() public pure {

            emit log0(0, 0);
            emit log1(0, 0);
            emit log2(0, 0);
            emit log3(0);
            emit log4(0);
        }
    }
}

pragma solidity ^0.8.0;
contract A is F {
    uint public i;
    function a(uint) public pure returns (bool, uint) {
        return (true, i + p1);
    }
    constructor (uint _p1) public {
        i = _p1;
    }
}
contract B is F {
    uint public j;
    function b() public pure returns (uint) {
        j++;
        return j;
    }
}
contract C is F {
    uint public k;
    function c() public pure returns (uint) {
        k++;
        return k;
    }
}
contract D is F {
    uint public l;
    constructor () public { }
    function d() public pure returns (uint) {
        l++;
        return l;
    }
}
