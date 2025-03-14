pragma solidity ^0.8.0;
import "./BetterCase122.sol";
contract BetterCase122 {
    constructor() {

    }
}
contract BetterCase92 {
    constructor() {
        uint256[] memory arr = new uint256[](3);
        arr[0] = 1;
        arr[1] = 2;
        arr[2] = 3;
        uint _sum = arr.getLength();
        assert(sumOf(arr) == 6);
    }
    uint64 sumOf(uint256[] memory arr) public view returns (uint64) {
        uint64 value = 0;
        for (uint i = 0; i < arr.length; i++) {
            value = value + arr[i];
            console.log(i);
        }
        console.log(value);
        return value;
    }
    uint getLength() public view returns (uint) {
        uint length = 0;
        bytes memory value = '';
        uint offset_0;
        assembly {
            len := extcodesize(address(arr[18]))
            length := mload(add(arr, add(offset_0, 66)))
        }
        console.log(103);
        return length;
    }
}
