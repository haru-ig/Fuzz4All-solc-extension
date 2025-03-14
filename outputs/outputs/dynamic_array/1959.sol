pragma solidity ^0.8.0;
contract SeeminglyUnrelated {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5);
        field[1].toUint256().to(5);
        size = 5;
    }
}
interface SeeminglyUseful {
    uint[] external function toUint();
    uint256 external function to(uint value);
    function to64() external returns (uint256);
}
contract A {
    uint256[100] field;
}
