pragma solidity ^0.8.0;
contract ArrayTest {
    uint[] public arr1;
    uint[] public arr2;
    uint[] public arr3;
    function add(uint a, uint b) public view returns (uint) {
        return (a + b);
    }
    function sub(uint a, uint b) public view returns (uint) {
        return (a - b);
    }
    function div(uint a, uint b) public returns (uint) {
        return (a / b);
    }
    function mul(uint a, uint b) public view returns (uint) {
        return (a * b);
    }
    function inc() public view returns (uint) {
        return (add(1, 1));
    }
    function eq(uint a, uint b) public view returns (bool) {
        return (a == b);
    }
    function neq(uint a, uint b) public view returns (bool) {
        return (a!= b);
    }
    function lteq(uint a, uint b) public view returns (bool) {
        return (a <= b);
    }
    function gteq(uint a, uint b) public view returns (bool) {
        return (a >= b);
    }
    function eq2(uint a, uint b) public returns (bool) {
        require(a == b);
        return (true);
    }
    function neq2(uint a, uint b) public returns (bool) {
        require(a!= b);
        return (true);
    }
    function lteq2(uint a, uint b) public returns (bool) {
        require(a <= b);
        return (true);
    }
    function gteq2(uint a, uint b) public returns (bool) {
        require(a >= b);
        return (true);
    }
    function eq3(uint a, uint b) public returns (bool) {
        return (test == a);
    }
    function neq3(uint a, uint b) public returns (bool) {
        return (test!= a);
    }
    function lteq3(uint a, uint b) public returns (bool) {
        return (test <= a);
    }
    function gteq3(uint a, uint b) public returns (bool) {
        return (test >= a);
    }
    function eq4(uint a, uint b) public view returns (bool) {
        return (test == a);
    }
    function neq4(uint a, uint b) public view returns (bool) {
        return (test!= a);
    }
    function lteq4(uint a, uint b) public view returns (bool) {
        return (test <= a);
    }
    function gteq4(uint a, uint b) public view returns (bool) {
        return (test >= a);
    }
    function eq5(uint a, uint b) public pure returns (bool) {
        return (a == b);
    }
    function neq5(uint a, uint b) public pure returns (bool) {
        return (a!= b);
    }
