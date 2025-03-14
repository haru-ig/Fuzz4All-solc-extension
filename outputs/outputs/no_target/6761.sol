pragma solidity ^0.8.0;
interface Foo {
    function myFunction(uint) returns (bool, string memory);
    function myReturnFunction() view returns (uint256);
    function myCallFunction(uint) external;
    function myCallFunctionWithResult() returns (uint256);
    function myCallFunction2() returns (bool, string memory);
}

contract TestMutated4 {
    Foo foo;
    mapping(address => uint) addr2uint;
    mapping(address => bool) addr2bool;

    constructor() {
        foo = Foo(0x0);
    }

    modifier onlyAddr(address addr) {
        require(addr == msg.sender);
        _;
    }

    function addrCall(address addr) onlyAddr(addr) public returns (bool f, string memory s) {
        f = foo.myFunction(145);
        s = foo.myReturnFunction().toString();
    }

    function addrCall2(address addr) onlyAddr(addr) public returns (uint p2) {
        p2 = foo.myCallFunction2().function2.return.first;
    }

    function addrCall3(address addr) onlyAddr(addr) public returns (uint256 p3) {
        p3 = foo.myCallFunctionReturn4();
    }

    function addrCall4(address addr) onlyAddr(addr) public returns (uint256, uint256) {
        (, p3) = foo.myCallFunctionReturn5();
        return (p3, foo.myCallFunctionWithResult());
    }

    function addrCall5_0(uint x0) public returns (uint x) {
        x = x0;
    }

    function addrCall5_1(uint x1) public returns (uint, uint) {
        (, x) = foo.myCallFunctionReturn6();
        return (x, foo.myCallFunctionWithResult());
    }

    function addrCall6_0(uint x0) public returns (uint x) {
        x = x0;
    }

    function addrCall6_1(uint x1, uint x2) public returns (uint, uint) {
        (, x) = foo.myCallFunctionReturn7(uint32(x1), uint32(x2));
        return (x, foo.myCallFunctionWithResult());
    }

    function addrCall6_2(uint x1, uint x2, uint) public returns (uint) {

        (, x) = foo.myCallFunctionReturn7(uint32(x1), uint32(x2));
        return x;
    }

    function addrCall6_3(uint x1, uint x2, uint x3) public returns (uint) {
        (x, x3) = foo.myCallFunctionReturn7(uint32(x1), uint32(x2));
