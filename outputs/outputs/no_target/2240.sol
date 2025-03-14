pragma solidity ^0.8.0;
contract mutation2 {
    function f(uint) public pure {
    }
    function g() public pure {
    }
}
contract mutation1 {
    function f(uint,uint) public pure {
    }
    function g() public pure {
    }
}
contract mutation {
    function f() public pure {
        uint i;
        (i,i) = (uint(1),uint(0));
    }
    function g() public pure {
    }
}
contract mut_test {
    function test1() external {
        uint i;
        uint[] memory d = new uint[](2);
        (i,i) = (uint(1),uint(0));
    }
    function test2() external{
        uint i;
        uint[] memory d = new uint[](2);
        (i,i) = (0,0);
    }
    function test3() external{
        uint i;
        (,uint(0)) = (0,0);
    }
}
