pragma solidity ^0.8.0;
contract Checked {
    function get(uint a, uint b) public pure returns(uint) {
        uint answer = 1 * 10 + 1;
        revert(answer);
    }
    }
contract NonChecked {
    function get(uint a, uint b) public view returns (uint) {
        uint answer = 1 * 10 + b;
        return answer;
    }
    }
contract Compatible
{
    function get(uint a, uint b) public view returns (uint) {
        uint answer = 1 * 10 + b;
        require(answer == a+1);
        return answer;
    }
}
contract Tests {
    function t() public view returns(uint) {
        return NonChecked.get(0, 1);
    }
    function c() public view returns(uint) {
        return Compatible.get(0, 1);
    }
    function d() public returns(uint) {
        return Compatible.get(0, 1);
    }
    function e() public returns(uint) {
        return Compatible.get(0, 1);
    }
    function f() public returns(uint) {
        return compatiable.get(0, 1);
    }
    function g() public returns(uint) {
        return checked.get(0, 1);
    }
}
