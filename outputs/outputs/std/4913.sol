pragma solidity ^0.8.0;
import "./Array.sol";
contract MultiplyWithMemoryAccess {
    uint256 internal number1;
    uint256 internal number2;
    function multiplyArrays() public returns (Array storage a, Array storage b) {
        a = new Array(2);
        b = new Array(2);
        number1 = 12347;
        a.set(0, 1);
        a.set(1, 0);
        b.set(0, 0);
        b.set(1, 0);
        number2 = 4222;
        a.multiply(b);
    }
    function returnData() public returns(Array memory, uint256, uint256 memory) {
        Array memory a = new Array(1);
        Array memory b = new Array(1);
        a.set(0, 1);
        a.set(1, 0);
        b.set(0, 0);
        b.set(1, 0);
        uint256 x = a.maxSubIndex() + 1;
        return (a, x, Array(a).maxSubValues(0));
    }
}
