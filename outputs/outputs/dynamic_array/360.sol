pragma solidity ^0.8.0;
contract Ga2 {
    function _mutate(uint count) internal {
        for (uint i = 0; i < count; i++) {
            (uint56[] memory arr) = b;
            (uint56 memory val) = arr[1];
            b[(i + 1) * 3 / 2] = val;
        }
    }
    uint56[] public b;
    function g() public returns(uint256){
        if (b.length == 0) {
            b = new uint56[](3);
            b[1] = b[0];
        }
        _mutate(4);
        return b[1];
    }
}
