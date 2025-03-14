pragma solidity ^0.8.0;
contract Array {
    uint256[] public array;
    constructor(uint256[] memory _array_) {
        array = _array_;
    }
    function findMaximum() private pure returns(uint256) {
        return array[0];
    }
    function findMinimum() private pure returns(uint256) {
        return array[0];
    }
    function setArray() private pure returns(uint256[]) {
        return array;
    }
}
pragma solidity ^0.8.0;
interface IArray {
    function findMaximum() external view returns(uint256);
    function findMinimum() external view returns(uint256);
    function setArray() external;
}
