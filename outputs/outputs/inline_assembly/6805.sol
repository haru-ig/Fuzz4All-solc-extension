pragma solidity ^0.8.0;
interface IInterface19 {
    function test1() returns(uint);
}
contract A {
    uint _data19;
    constructor(uint _data19_) public {
        _data19 = _data19_;
    }
    function test1() public view returns(uint) {
        return _data19;
    }
    function test2() public view returns(uint) {
        return address(this).balance;
    }
    function test3() public view returns(uint) {
        return IInterface19(address(this)).test1();
    }
    function test4() public view returns(uint) {
        return address(IInterface19(address(this))).test1();
    }
}
contract B is A {

    constructor(uint data) public A(_data19) {
        test1();
    }
    function test1() public view returns(uint) {
        return _data19;
    }
}
contract C is B {

    constructor(uint data) public B(data) {
        test2();
    }
    function test2() public returns(uint) {
        return address(this).balance;
    }
}
/* Please create
