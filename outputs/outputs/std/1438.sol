pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 0;
    uint[] nums;
    uint[] nums1;
    uint[] nums2;
    uint[] nums3;
    address[] adresses;
    function setNum(uint[1] memory setNum) public {
        nums = setNum;
    }
    function changeMin(uint[1] memory min1) public {
        for (uint i = 0; i < nums.length; i++) {
            uint curMin = min1[i];
            if (nums[i] > curMin) {
                nums[i] = curMin;
            }
        }
    }
    function setAdrress(uint[1] memory setAdrress) public {
        adresses = setAdrress;
    }
    function getMin() public view returns (uint256) {
        uint max = nums[0];
        for (uint i = 1; i < nums.length; i++) {
            if (nums[i] > max && nums[i] > nums1[i]) {
                max = nums[i];
            }
        }
        return max;
    }
    function addAdrress(uint[1] memory setAdrress) public {
        for (uint i = 0; i < nums.length; i++) {
            if (nums[i] > adresses[i]) {
                nums3.push(nums[i]);
            }
        }
    }
    function removeAdrress(uint[1] memory setAdrress) public {
        for (uint i = 0; i < nums3.length; i++) {
            if (nums3[i] >= setAdrress[0]) {
                for (uint j = i + 1; j < nums3.length; j++) {
                    nums[j - 1] = nums3[j];
                }
                nums3[j] = 0;
                nums.push(nums3[j]);
            }
        }
    }
    function clear() public {
        nums2.push(0);
        nums2 = new uint[](0);
        nums1 = new uint[](nums2.length + 1);
        nums3 = new uint[](0);
        adresses = new address[](nums2.length + 1);
    }
    function getAdrress(uint[1] memory setAdrress) public view returns (address[1] memory) {
        return adresses;
    }
    function getMin2() public view returns (uint256) {
        uint max = nums[0];
        for (uint i = 1; i < nums.length; i++) {
            if (nums[i] > max && nums[i
