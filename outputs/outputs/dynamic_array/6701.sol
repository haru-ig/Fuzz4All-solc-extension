pragma solidity ^0.8.0;
contract T8FA_mutator_1 {


    event Log(bytes32 data, uint256 data2, uint data3, uint data4);
    uint[] public a;

    function f() public {
        a.push(uint(uint8(1)));
    }
    fallback() external {
    }
    modifier p() {
        emit Log("Modifier", 1, 2, 3);
        _;
        emit Log("Modifier", 101, 0, 302);
    }
    constructor() public {
       emit Log("Constructor", 102, 0, 0);
       a.push(uint(uint8(1)));
    }
    modifier x(bytes32 param) {
        emit Log(param, 0, 0, 0);
        _;
        emit Log(param, 0, 0, 0);
    }
    function m() public {
        a.push(uint(uint8(1)));
    }
    fallback() external {
    }
    function n() p public {
        a.push(uint(uint8(2)));
    }
    function o() public {
        a.push(uint(uint8(3)));
    }
    function p() public {
        a.push(uint(uint8(1)));
    }
    function q() public {
        a.push(uint(uint8(0)));
    }
    function r() public {
        a.push(uint(uint8(0)));
    }
    function s() public {
        a.push(uint(uint8(0)));
    }
    function t() public {
        a.push(uint(uint8(0)));
    }
    function u() public {
        a.push(uint(uint8(2)));
    }
}
