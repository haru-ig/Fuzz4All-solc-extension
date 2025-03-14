pragma solidity ^0.8.0;

contract SimpleY4 {
    uint256[] public array;
    mapping(uint256 => bool) public a;

    mapping(uint256 => uint256) public b;

    function test(uint256 n, uint256 m) external{
        array.push(n + m);
        a[n + m] = true;
    }

    function test2(uint256 n, uint256 m) public{
        a[n + m] = true;
        array.push(n + m);
    }
    function inc(uint256 x) public view returns (uint256){
        return (((1 * b[x]) * (1 / b[x])) + x) + x;
    }

}
