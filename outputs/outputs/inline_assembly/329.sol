pragma solidity ^0.8.0;
contract F0 {
    function add_internal(uint a, uint b) public view returns (uint){
        return a + b;
    }
    function add(uint a, uint b) public view returns (uint){
        return a > 0? a + b : -(a + b);
    }
}
contract SafeMath0 {
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    function sub(uint a, uint b) public pure returns (uint) {
        require(b <= a);
        return a - b;
    }
    function mul(uint a, uint b) public pure returns (uint) {
        return a * b;
    }
    function div(uint a, uint b) public pure returns (uint) {
        return div(a, b, 100000000000000000000);
    }
    function div(uint a, uint b, uint c) public pure returns (uint) {
        require(b > 0);
        uint res = a / b;
        return c >= 0? (res * 10 ** uint(c)) : (10 ** uint(-c + 1)) * (res + 1);
    }
    function mod(uint a, uint b) public pure returns (uint) {
        return a % b;
    }
    function max64(uint a, uint b) public pure returns (uint) {
        return a > b? a : b;
    }
    function min64(uint a, uint b) public pure returns (uint) {
        return a < b? a : b;
    }
}
contract D2 {
    uint z;

    function add() public returns(bool) {
        return true;
    }

    function add2() public returns(bool) {
        uint z;
        z = SafeMath0.add(uint(0), z);
        return true;
    }

    function add3(uint a, uint b) public returns(bool) {
        return true;
    }

    function subtract() public returns(uint) {
        return this.add(3);
    }

    function subtract2() public returns(uint) {
        uint z = this.add(3);
        z = (SafeMath0.subtract(uint(0), z));
        return z;
    }

    function subtract3(uint a, uint b) public returns(uint) {
        return SafeMath0.add(a, b);
    }

    function multiply() public returns(uint) {
        return SafeMath0.add(2, uint(0));
    }

    function multiply2() public returns
