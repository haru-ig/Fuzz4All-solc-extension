pragma solidity ^0.8.0;
interface MyInterface {
    function swapLeft() external;
}
interface MyInterfaceX {
    function swapLeft() external;
}
contract Test {
    uint256[2] public x;

    function test() external {
        swapLeft(x);
    }

    function swapLeft(uint256[] memory) public returns (uint256) {
        return x[0];
    }
}
