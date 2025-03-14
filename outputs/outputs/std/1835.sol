pragma solidity ^0.8.0;
contract SolidityExample6 {
    uint8 public constant X = 1;
}



pragma solidity ^0.8.0;
contract SolidityExample7 is SolidityExample5, SolidityExample6 {
    uint8 public constant X = 1;
}
