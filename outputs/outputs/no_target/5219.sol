pragma solidity ^0.8.0;
contract SimpleExample17 {
    uint num = uint(uint256(uint160(0x266d)));
    function doSomething(bytes memory _data) public {
        num = uint(min(num, 1));
        num = max(num, 5);
        assert(num == uint(uint256(uint160(0x1900))));
    }

    function min(uint a, uint b) private pure returns (uint) {
        return a < b? a : b;
    }

    function max(uint a, uint b) private pure returns (uint) {
        return a < b? b : a;
    }
}
