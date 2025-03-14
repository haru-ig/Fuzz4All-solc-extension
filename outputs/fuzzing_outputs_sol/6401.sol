pragma solidity ^0.8.0;
contract Mutant6 {

    uint public constant NUM = 0;

    void func1() public pure returns (uint) {
        uint a = 1;
        return a;
    }

    function func2() public pure returns (uint) {
        uint a = func1();
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        return a;
    }

    function func3() public pure returns (uint) {
        uint a = func2();
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a + 1;
        return a;
    }

    function func4() public pure returns (uint) {
        uint a = func3();
        return a;
    }

    function func5() public pure returns (uint) {
    uint a = func4();
    return a;
    }

    function test() public pure returns (uint) {
        uint a = 1;
        if (a < 1) {
            a = a + 1;
        }
        return a;
    }
}
