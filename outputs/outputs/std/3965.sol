pragma solidity ^0.8.0;
contract Array1 {
    function get_arr(address[] memory a) internal view returns (uint[]) {
        uint[] memory nums = new uint[](a.length);
        for (uint i=0; i < a.length; i++) nums[i] = uint(keccak256(abi.encodePacked("a", a[i])));
        return nums;
    }

    function setAll1(uint[] memory nums, uint value) public {
        for(uint i = 0; i < nums.length; i++) nums[i] = value;
    }
}
