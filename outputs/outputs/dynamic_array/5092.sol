pragma solidity ^0.8.0;
contract Test940915 {
    address[] array = new address[](10);
    address[] emptyArray;
    function f(uint n) public public pure {
        emptyArray.push(array[n]);
        array[n] = array[n + 1];
    }
    function g(uint n) public public pure {
        array[n] = array[n];
        array[n + 1] = array[1 + n];
        array[1 + n] = array[9];
        array[10] = array[9];
        array[9] = array[8];
    }
}
