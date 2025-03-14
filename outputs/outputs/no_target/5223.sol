pragma solidity ^0.8.0;
contract SimpleExample17 {
    uint num = uint(uint256(uint160(0x266d)));
    function doSomething(bytes memory _data) public {
        num = uint(uint_min(1, num));
        num = uint_max(5, num);
        assert(num == uint(uint256(uint160(0x1900))));
    }

    function uint160() private pure returns (uint160) {
        return uint160(uint(uint256(uint160(0x266d)))));
    }
    function uint_min(uint a, uint b) private pure returns (uint) {
        return a < b? a : b;
    }
    function uint_max(uint a, uint b) private pure returns (uint) {
        return a < b? b : a;
    }
}
```
