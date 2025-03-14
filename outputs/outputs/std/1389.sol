pragma solidity ^0.8.0;
contract Mutate extends Arrays2 {
    uint constant M = 33;
    uint j;
    address[] storage new_addrs;
    address[] storage bad_addrs;
    string[] storage new_strings;
    string[] storage bad_strings;
    uint[] storage new_ints;
    uint[] storage bad_ints;
    bytes32[] storage new_bytes;
    bytes32[] storage bad_bytes;
    int[] storage new_ints2;
    int[] storage bad_ints2;
    bool[] storage new_bools;
    bool[] storage bad_bools;
    bytes32[] storage new_bytes2;
    bytes32[] storage bad_bytes2;
    uint[] storage bad_sizes;

    function mutate(
        uint size
    ) public {
        for(j = 0; j < size; j++) {
            uint num = (
                uint(uint(keccak256(abi.encodePacked((uint)j, j, uint256(new uint[](1)[size])), uint256(new uint[](1)[size]), bytes(new string[](1)[size])))
            ) % (uint(1000000000)) + (uint(9999999999)));
            uint256[] storage num2 = new uint[](2);
            num2[1] = num;
            uint256[] storage num4 = nums1;
            num4[0] = num;
            uint256[] storage num5 = nums2;
            num5[0] = num;
            new_addrs.push(msg.sender);
            num2[0] = num;
            num5[1] = num;
            new_ints.push(num);
            new_ints2.push(num);
            num4[1] = num;
            new_bytes.push(num);
            new_bytes2.push(num);
            new_bools.push(true);
            num2[1] = num;
            num5[1] = num;
            new_ints2.push(num);

            bytes32[] storage num6 = new_bytes;
            num6[0] = num;
            num5[0] = num;
            num6[1] = num;
            new_ints.push(num);
            num5[1] = num;
            bad_sizes[new_ints.length] = bytes((new bytes[](2))).length;
        }

        uint256[] storage num7 = nums3;
        num7[1] = msg.sender;
        uint256[] storage num9 = nums4;
        for(j = 0; j < M; j++) {
            uint num10 = (
                uint(uint(keccak256(abi.encodePacked((uint)j, j, uint256(new uint[](1)[size])), uint256(new uint[](1)[size]), bytes(new string[](1)[size])))
