pragma solidity ^0.8.0;
contract A
{
    function f() public returns (uint) {   return Lib.add(1, 2) / Lib.div(3, 2); }
    function g() internal returns (uint) { return Lib.add(1, 2) % Lib.div(3, 2); }
    function h() external returns (uint) { return "Hello, World!"; }
}
contract B is A
{
    function p() public returns (uint) {   return h(); }
    function q() internal returns (uint) {   return f(); }
}
contract TestE
{
    uint num = 5;
    contract Inner
    {
        uint num = 6;
        function r() public pure returns (uint) {
                return (num++ % 5);
        }
    }
    function g() public returns (uint) {
        return Inner().r();
    }
    function h() public returns (uint) {
        uint result = 0;
        for(uint i = 0; i < num; i++) {
            result = result * 2;
        }

        uint result = 5 * 2 * 5;
        return result * 5 / 6;
    }
    function i() internal returns (uint) {
        uint result = 0;
        for(uint i = 0; i < num; i++) {
            result = (result + 2) % 5;
        }

        uint result = 7;
        return result * 7 / 5;
    }
    /* Please create a short program
