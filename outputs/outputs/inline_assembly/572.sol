pragma solidity ^0.8.0;
contract Equivalent {
    function testMethod() public pure returns (bytes32){
        bytes32 x;
        x = 0xfafafa;
        return add(x, 0x000);
    }
    function add(bytes32 a, bytes32 b) public pure returns (bytes32){
        return a + b;
    }
}
