pragma solidity ^0.8.0;
contract MutateSemantic2 {
    function modifyF() public returns (uint256) {
        return 0;
    }
    function modifyFReturning() public returns (uint256 ret) {
        return 10;
    }
}
contract MutateSemantic3 {
    function () external payable {}
}
contract MutateSemantic4 {
    function () public payable {}
    function f() public returns (uint256 x) {
        x = 10;
    }
}
