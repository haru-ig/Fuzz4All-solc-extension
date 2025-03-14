pragma solidity ^0.8.0;
contract SimpleY10 {
    mapping(uint256 => uint256) public b;
    function f(uint256 n) public view returns (uint256){
        return 1 / (1 / (1 / (1 / (1 * b[n] + n * n) + 1) + n + 1) * (1 / (1 / (1 / (1 / (1 * b[n] + n * n) + 1) + n + 1) + n + 1) + n + 1));
    }
}
