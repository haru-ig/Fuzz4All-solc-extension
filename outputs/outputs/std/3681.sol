pragma solidity ^0.8.0;
contract ListLib2 {
    function reverse(uint32[] storage a) public pure returns (uint32[] memory) {
        uint32 v = a.length - 1;
        while(v > 0) {
            uint32 c = a[v - 1];
            a[v - 1] = a[v];
            a[v] = c;
            --v;
        }
        return a;
    }
}
