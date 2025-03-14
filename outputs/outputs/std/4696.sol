pragma solidity ^0.8.0;
contract A {
    function f1() public pure returns (uint) {
        return 1234;
    }
    function f2() public pure returns (uint) {
        return this.f1() + 5678;
    }
}
pragma solidity ^0.8.0;
contract M4534 {
}

pragma solidity ^0.8.0;
contract A {
    struct B {
        uint16 a;
        uint8 b;
        uint17 c;
    }
    struct C {
        uint11 d;
        uint17 e;
    }
    address public address1;
    uint1 public a1;
    uint8 public b1;
    bytes storage public c1;
    function f1(uint f3, uint f4, uint f5, uint f6) public pure returns (uint) {
        return a1;
    }
    bytes f2(uint f3, uint f4, uint f5, uint f6) public pure returns (bytes memory) {
        return c1;
    }
    function f3(uint f8, uint f9) public returns (address) {
        return address1;
    }
    function f4(uint f8, uint f9) public returns (uint1) {
        return a1;
    }
    function f5(uint f8, uint f9) public returns (uint8) {
        return b1;
    }
    function f6(uint f8, uint f9) public returns (uint17) {
        return c1;
    }
    function f7(uint f8, uint f9) public returns (uint11) {
        return d1;
    }
    function get1() pure public returns(uint) {
        return a1;
    }
    modifier m1(uint f1, uint f2, uint f3, uint f4, uint f5, uint f6, uint f7, uint f8, uint f9) {}
}
