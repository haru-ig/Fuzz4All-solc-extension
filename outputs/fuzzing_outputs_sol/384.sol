pragma solidity ^0.8.0;
contract Caller {
    function foo(bytes memory x, uint xlen) public payable {
        x.copy(0xbadd, 0xbadd);
        x.copy(0, 0);
    }
    function foo2(bytes memory x, uint xlen) public payable returns (bytes memory) {
        x.copy(0, 0);
        return x;
    }
    function foo3(bytes memory x, uint xlen) public payable returns (bytes memory) {
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        return x;
    }
    function foo4(bytes memory x, uint xlen) public payable returns (bytes memory) {
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        return x;
    }
    function foo5(bytes memory x, uint xlen) public payable returns (bytes memory) {
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        x.copy(0, 0);
        return x;
    }
}
