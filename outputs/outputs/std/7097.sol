pragma solidity ^0.8.0;
interface Storage {
    function get() external view returns (uint256);
}

pragma solidity ^0.8.0;
contract BitwiseXORX {
    bytes10 a;
    function test() public{
        uint256 b = 3;
        a = a^ b;
    }
}
