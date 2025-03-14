pragma solidity ^0.8.0;
import "./Array.sol";
contract Multiply {
    Array.Array array;
    function multiply(uint256 a, uint256 b) public {
        if (a == 0) return;
        uint256[] memory result = getResult(a, b, array, true);
        array.set(result, 0, true);
    }
}
