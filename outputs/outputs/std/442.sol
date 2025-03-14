pragma solidity ^0.8.0;
contract Test {
    constructor(uint _nums) {
        nums = _nums;
    }

    uint[] public nums;
}
pragma solidity ^0.8.0;
contract Test {
    function test() public {
        nums[length(nums) - 1] = 10;
    }

    uint[] public nums;
}
pragma solidity ^0.8.0;
contract Test {
    constructor(uint _nums) {
        nums = _nums;
    }

    uint[] public nums;

    function test() public {
        nums[length(nums) - 1] = 10;
    }

    function removeFirst(uint _num) public {
        arraySet(nums.length - 1, _num, nums);
    }

    function getMin() public view returns (uint) {
        return arrayGet(0);
    }

    function getMax() public view returns (uint) {
        return arrayGet(nums.length - 1);
    }

    function getSum() public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < nums.length; i++) {
            sum += nums[i];
        }
        return sum;
    }

    function isOdd(uint _num) public view returns (bool) {
        return _num % 2 == 1;
    }

    function makeArray(uint _num) public {
        arraySet(0, _num, nums);
    }

    function arraySet(uint _index, uint _num, uint[] storage _array) internal {
        require(nums.length > _index);
        if (_index < nums.length) {
            require(nums[_index] == _num && _array[_index] == _num);
        }
        for (uint i = _index + 1; i < nums.length; i++) {
            nums[i - 1] = nums[i];
        }
        nums[_index] = _num;
    }

    function arrayGet(uint _index) internal view returns (uint) {
        require(_index < nums.length);
        return nums[_index];
    }
}
