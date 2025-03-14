pragma solidity ^0.8.0;
contract Arrays2 {
    uint constant M = 87;
    uint[] nums1;
    uint[M] memory nums2;
    uint256[] arr;
    uint[] nums3;
    function setVals(uint256 val) public {
        nums1.push(val);
        nums1.pop();
        nums1.push(val);
        nums1.set(2, val);
        nums1.clear();
        nums1.push(val);
        nums1.push(val);
        nums1.pop();

        nums2[nums2.length] = val;
        nums2.length++;
        nums2.length--;
        nums2.length++;
        nums2.length--;
    }
}
