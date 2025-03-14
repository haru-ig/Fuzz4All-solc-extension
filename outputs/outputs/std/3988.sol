pragma solidity ^0.8.0;
contract Array {
    function setAndGetArray(uint[10] storage nums) public {
        uint max = nums[0];
        for (uint j = 1; j < nums.length; ++j)
        {
            if (nums[j] > max)
            {
                max = nums[j];
            }
        }
        nums[0] = max;
    }
     function sortArray(uint[10] memory nums) public {
       sort(nums, 0, nums.length - 1);
    }
    function sort(uint[10] storage array, uint start, uint end) private  {
        while (start < end)
        {
            uint t = array[end];
            uint i = start;
            while (i < end - 1 && array[i + 1] > t)
            {
                i++;
            }
            array[end] = array[i];
            array[i] = t;
            end--;
        }
    }
}
