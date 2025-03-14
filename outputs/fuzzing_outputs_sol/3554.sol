pragma solidity ^0.8.0;
contract MutateSemantic2 {
    function f() public payable returns (uint256 x) {
        x = 100;
    }
    function modifyF() public returns (uint256 x) {
        x = 100;
    }
}

pragma solidity ^0.8.0;
contract MutateSemantic3 {
    function f() public payable returns (uint256 x) {
        x = 100;
    }
    function modifyF() public returns (uint256 x, uint32 a) {
        x = 100;
        a = 3;
    }
}
