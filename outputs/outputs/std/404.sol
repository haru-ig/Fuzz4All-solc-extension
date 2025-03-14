pragma solidity ^0.8.0;
interface IArrayContract {
    function sum() external pure returns (uint256);
    function max() external pure returns (uint256);
    function min() external pure returns (uint256);
    function set(uint256 indexed index, uint256 value) public;
}
pragma solidity ^0.8.0;
contract Array is IArrayContract {
    uint8[6] private array = [8, 17, 21, 29, 30, 31];
    uint256 private constant minValue = 0;
    uint256 private constant maxValue = (2**127)-1;
    uint256 private constant sumValue = 65535;
    uint8 public value;
    uint256 private constant minIndex = 0;
    uint256 private constant maxIndex = 5;
    uint256 private constant zeroIndex = 0;

    fallback() external payable {
    }

    function constructor() {
        value = test();
    }

    function get(uint256 index) public pure returns (uint256) {
        return array[index];
    }

    function set(uint256 index, uint256 element) public {
        require(value == 8, "array: not initialized");
        array[index] = element;
    }

    function sum() public pure returns (uint256) {
        return sumValue;
    }
    function max() public pure returns (uint256) {
        return maxValue;
    }
    function min() public pure returns (uint256) {
        return minValue;
    }
    function toString() public pure returns (string memory) {
        return "Array: sum: " + toString(sumValue) + " " +
            "max: " + toString(maxValue) + " " +
            "min: " + toString(minValue);
    }
    function toString(uint256 value) public pure returns (string memory) {
        uint256 i = 0;
        string memory res = "";
        while (value > 0) {
            i++;
            value /= 10;
        }
        for (; i < i * -2; i += 2) {
            value /= 10;
            res = toString(value) + res;
        }
        if (value > 0) res = toString(value) + res;
        return res;
    }
}
pragma solidity ^0.8.0;
contract Main {
    address payable public sender;
    uint256 private constant amount = 1;
    address payable public receiver;
    constructor()
        public payable {
        sender = msg.sender;
    }

    function test() public pure returns(uint) {
        IArrayContract memory a = new Array;
        a.set(zeroIndex, uint256(msg.value));
        return uint(a.get(zeroIndex));
