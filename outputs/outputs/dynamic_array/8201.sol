pragma solidity ^0.8.0;
contract NewMutatedFabric {
    uint[] public x;
    uint public y;
    uint public z;
    function f(uint[] memory array) {
        x.push(24);
        x.push(5);
        y = 24;
        z = array.length;
    }
    function g(uint[] memory array) public {
        array = new uint[](z);
        x.push(24);
        array.push(2);
        pushback(x, 5, 6);
    }
}
