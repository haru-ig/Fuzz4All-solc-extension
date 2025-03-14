pragma solidity ^0.8.0;
contract ArrayHelper {
    function insert(uint pos, uint val) public {
        require(pos <= nums.length);
        uint[] memory arr = new uint[](nums.length);
        for (uint i = 0; i < nums.length; i++) {
            arr[i] = nums[i];
        }
        arr[pos] = val;
        for (uint i = nums.length; i > pos; i--) {
            nums[i] = nums[i - 1];
        }
        nums[pos] = val;
    }
    function erase(uint pos) public {
        require(pos <= nums.length);
        for (uint i = pos; i < nums.length; i++) {
            nums[i] = nums[i + 1];
        }
        nums[nums.length - 1] = 0;
    }
    function eraseAll() public {
        nums.length = 0;
    }
    function get_max() public view returns (uint max) {
        max = 0;
        for (uint i = 0; i < nums.length; i++) {
            if (nums[i] > max) max = nums[i];
        }
    }
    function get_min(uint start) public view returns (uint) {
        uint min = 10 ** 18;
        uint step = 1u & (10 ** 16);
        for (uint i = start; i < nums.length; i += step) {
            if (nums[i] < min) min = nums[i];
        }
    }
    function get_sum(uint start, uint end) public view returns (uint sum) {
        for (uint i = start; i <= end; i++) {
            sum += nums[i];
        }
    }
    function print_memory(uint[] memory arr) public {
        for (uint i = 0; i < arr.length; i++) {
            print(arr[i]);
        }
    }
}
