pragma solidity ^0.8.0;


contract EquivalentMutable {
    uint256 private stateVariable;

    function setRandom(uint256 rnd) public {


        stateVariable = rnd;
    }
}
contract Array {



    uint256[] numbers;

    function push(uint256 elem) public {
        numbers.push(elem);
    }

    function at(uint256 index) public view returns (uint256 element) {
        return numbers[index];
    }

    function length() public view returns (uint256) {
        return numbers.length;
    }

    function max() public view returns (uint256) {
        uint256 max = numbers[0];
        for (uint256 x = 1; x!= numbers.length; x++) {
            uint256 num = numbers[x];
            require(num < max);
            max = num;
        }
        return max;
    }

    function min() public view returns (uint256) {
        uint256 min = numbers[0];
        for (uint256 x = 1; x!= numbers.length; x++) {
            uint256 num = numbers[x];
            require(num > min);
            min = num;
        }
        return min;
    }
}
