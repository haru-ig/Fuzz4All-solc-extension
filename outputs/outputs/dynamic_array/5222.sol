pragma solidity ^0.8.0;
contract Test38 {
    uint[] storage a;
    function f(uint[] storage, uint[] memory) internal pure returns (uint[] memory b) {
        a.length = 2;
        a[0] = 0;
        b = a;
        b.length -= 1;
        return b;
    }
}
