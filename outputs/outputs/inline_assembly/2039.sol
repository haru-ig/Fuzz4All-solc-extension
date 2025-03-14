pragma solidity ^0.8.0;
contract SimpleY5 {
    mapping(uint256 => uint256) public b;
    mapping(uint256 => uint256) private o;
    function f(uint256 n) public view returns (uint256){
        return (1 / (99 * (2 * (1 * b[n] + n * n) + (1 / (2 * (1 * b[n] + n * n) + 1))) + n + 1)) * (98 * (2 * (1 * b[n] + n * n) + (1 / (2 * (1 * b[n] + n * n) + 1))) + n + 1));
    }
}
