pragma solidity ^0.8.0;
contract SimpleY5 {
    uint256[] public array;
    mapping(uint256 => bool) public a;
    mapping(uint256 => uint256) public b;
    function test(uint256 n, uint256 m) public{
        a[n + m] = true;
        array.push(n + m);
        b[x] = 2**32 - 1 * b[x];
    }
}
