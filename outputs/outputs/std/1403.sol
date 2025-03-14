pragma solidity ^0.8.0;
contract Arrays3 {
    uint constant M = 87;
    uint[] nums1;
    uint[][] nums2;
    uint[][] nums3;
    uint[][] nums4;
    function getMin(uint[][] memory nums) public view returns (uint256) {
        uint256 min = nums[0][0];
        for (uint j = 1; j < nums[0].length; j++) {
            if (nums[0][j] < min) {
                min = nums[0][j];
            }
        }
        return min;
    }
}
contract Random {
    function rand() internal view returns (uint) {
        return uint(keccak256(abi.encodePacked(blockhash(block.number - 1), now))) % 10000;
    }
}
contract Test {
    function test() public returns (uint) {
        uint256 a = 100;
        uint256 b = 99;
        uint256 c = a++;
        b = b--;
        (a, 2*b) = (b, a ^= 0x12345);
        (a, c) = (c, -1*a);
        a = 2 * (a + b);
        return a;
    }
}
contract Arrays4 {
    uint a;
    uint constant M = 87;

    function pushArray() public {
        uint[][] storage arr1 = nums1;
        uint[][] storage arr2 = nums2;
        uint[][] storage arr3 = nums3;

        uint x = rand();
        uint y = rand();

        uint x2 = rand();
        uint y2 = rand();

        uint z = rand();
        (uint z, 999) = (z - 1000, int(987654321));

        uint[][] memory arr12 = nums1;
        (x, x) = (x, x2);
        arr12[0].push(x);
        (y, y) = (y - 2, 1);
        arr12[0].push(y);

        (uint w, w2) = (w, rand() ^ 0x0123456789abcabcdef);

        uint[][] storage arr32 = nums3;
        (z, z) = (z - 4, rand());
        arr32[0].push(z);

        (y2, y2) = (y2 - 3, 1);
        arr32[0].push(y2);

        arr1.push(arr12.push(arr3));
        arr3.push(arr
