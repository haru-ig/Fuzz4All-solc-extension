pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/math/Math.sol";
contract Variable_Example {
    function getSum(uint x, uint y) public view returns(uint) {
        uint sum = x + y;
        return sum;
    }
    function getSums(uint x, uint y) public view returns(uint, uint) {
        uint sumX = x + y;
        uint sumY = x - y;
        return (sumX, sumY);
    }
}
contract Variable_Constant_Conflict {

    uint x = 1;
    uint y = 2;
    function getSum(uint x, uint y) public view returns(uint) {
        uint sum = x + y;
        return sum;
    }
    function getSums(uint x, uint y) public view returns(uint, uint) {
        uint sumX = x + y;
        uint sumY = x - y;
        return (sumX, sumY);
    }
}
contract Variable_Constant_Conflict_2 {
    uint x = 1;
    uint y = 2;
    function getSum(uint x, uint y) public view returns(uint) {
        uint sum = x + y;
        return sum;
    }
    function getSums(uint x, uint y) public view returns(uint, uint) {
        uint sumX = x + y;
        uint sumY = x - y;
        return (sumX, sumY);
    }
}
