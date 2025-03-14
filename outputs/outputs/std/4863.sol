pragma solidity ^0.8.0;
contract Mutate {
    struct Test {
        uint test1;
        uint test2;
        address[] a0;
        string b0;
        uint c0;
    }
    Test test;
}
contract Array {
    function test1() external {
        (uint[] memory a) = test.a0;
        (uint x, uint y) = (a[0], a[1]);
    }
    function test2(uint[] memory a) external returns (uint x) {
        (x) = a[0];
    }
    function test3() public returns(uint[] memory, uint x) {
        (uint[] memory a, x) = (test.a0, test.c0);
    }
    function test4() public view returns(uint a) {
        (a) = test.a0[0];
    }
    function test5() public view returns(uint x) {
        (x) = test.c0;
    }
    function test6(uint _a) public {
        uint x = _a;
        test.a0.push(x);
        test.b0 = "hello";
    }
}
contract MultiPrecision {
    uint constant max_exp = 2;
    uint constant min_exp = -7;
    function test1(uint x, uint a) view public returns(uint x_mul, uint a_exp) {
        (x_mul) = x*a;
        (a_exp) = x >> 27;
    }
    function test2(uint x) view public returns(uint x_mul, uint a_exp) {
        (x_mul) = x;
        (a_exp) = x >> 27;
    }
    function test3(uint a) view public returns(uint a_div, uint a_mul) {
        (a_div) = (a + (2**max_exp))/(2**(max_exp+1));
        uint a_mul0 = a/2;
        uint a_mul1 = a/(2**(max_exp+1));
    }
    function test4(uint a) view public returns(uint x) {
        (x) = a/(2**(max_exp+1));
    }
}
