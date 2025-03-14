pragma solidity ^0.8.0;
contract MyContract {
    function getAddress(uint) public pure returns (address) {
        return address(0);
    }
    function setAddress(uint x) public {
        address addr1 = address(0x0);
        address addr2 = address(0x0);
    }
}
contract C {
    function get(uint) public pure returns (address) {
        return address(0);
    }
}
pragma solidity ^0.6.6;
contract E {
    function c(uint) public pure returns (address) {
        return address(0);
    }
}
contract D is E {
    function _C() public pure returns (address) {
        E e = new E();

        address a = e.c(0x2);

        address a1 = e.get(0x2);
    }
}
contract B {
    function f(uint) public virtual returns (address){
        return address(this);
    }
}
contract A is B {
    function a(uint) public returns (uint, uint) {
        return ((1, 1u));
    }
    uint[3] arr;
    function g() public returns (uint){
        return 28;
    }
    function h() public returns (uint, uint) {
        return (
            1, 0xff80000000000800000000000000000000000000ffff
        );
    }

    modifier f() {
        uint x = 2;
        return;
    }
    function i() public virtual returns (uint) {
        uint tmp = a(0xff800000000000000000000000000000000001);
        uint h = h();
        uint f = f();
        return (f + h || tmp == 0x238000000000000000 && h == 0xff8000000000000000000000000000000000001);
    }
    function j() public returns (uint, uint) public virtual {
        uint v1 = h();
        uint v2 = setAddress(0x2);
        uint
