pragma solidity ^0.8.0;
contract Array_2 {
    uint64[] public b = new uint64[](3);
    uint64[] public x = new uint64[](512);
    uint256[] public y = new uint256[](10);
    uint64[] public f = new uint64[](6);
    uint256[] public g;
    function init() public {
        b[0] = 42;
        a = new uint64[](7);
        a[4] = 12;
        a[5] = 0;
        a[6] = 0;
        for (uint256 i = 0; i < a.length; i += 1) {
            a[i] = i;
        }
        for (uint256 i = 0; i < b.length; i += 1) {
            b[i] = 42;
        }
        for (uint256 i = 0; i < x.length; i += 1) {
            x[i] = 42;
        }
        for (uint256 i = 0; i < f.length; i += 1) {
            f[i] = i;
        }
        for (uint256 i = 0; i < y.length; i += 1) {
            y[i] = 1234;
        }
        g = new uint256[](7);
        for (uint256 j = 0; j < g.length; j += 1) {
            g[j] = (uint256(keccak256(abi.encodePacked(blockhash(blocknumber - 1), g)))) * 2 + i;
        }
        g_test();
        require(x.length!= 42, "Invalid length");
        require(x.length!= 23, "Invalid length");
        require(x.length!= x.length - 1, "Invalid length");
        require(x.length!= 0, "Invalid length");
        require(x.length * x.length == x256.length * x.length, "Invalid length");
        require(x.length!= 0xffffffffffffffff, "Invalid length");
        require(x.length % 2 == 0, "Invalid length");
        require(x.length!= (1 << 256) - 1, "Invalid length");
        require(x.length!= 10**10, "Invalid length");
        require(x.length / 4!= 1, "Invalid length");
        require(x.length < 0xffffffffffffffff, "Invalid length");
        require(x.length == 2n, "Invalid length");
        require(x.length
