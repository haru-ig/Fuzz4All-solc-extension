pragma solidity ^0.8.0;
contract B is i {
    uint x;
    function m() public pure returns (uint y) {
        x = 5;
        y = x;
        return;
    }
}
contract A is B {
    constructor() public {}
}
contract C {
    use A;
    uint public x;
    function m() public view returns (uint) {
        x = 10;
        return;
    }
}
contract D is C {
    modifier m(int i) {
        x += i;
        _;
    }
    function m2() public view returns (uint) {
        x -= 5;
        return;
    }
}
contract E is C {
    modifier m(int i) {
        x += i;
        _;
    }
    function m3() public view returns (uint) {
        x += 5;
        return;
    }
}
contract F {
    use A;
    uint public x;
    function m4() public returns (uint) {
        x = m(3);
        m();
        return;
    }
}
contract G is B, D, E, F {
    uint public y;
    uint public z;
    function m(int i) internal view returns (uint) {
        y += i;
        z += i;
        return;
    }
}
contract H {
    modifier m(int i) {
        x += i;
        _;
    }
    function m(int i) public view returns (uint) {
        x += i;
        m(i);
        return;
    }
}
contract I {
    contract test {
        function a(uint b) public pure returns (uint c) {
            c = b + 1;
        }
    }
    use test;

    function a(uint b) public pure returns (uint c) {
        c = b + 1;
    }
}
