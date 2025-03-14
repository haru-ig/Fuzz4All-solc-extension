pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract Array {

    uint public constant maxUint = 0xffffffffffffffffffffffffffffffffffffffffffffffff;

    uint[2] data;

    constructor(uint256[] memory init) public {
        data = init;
    }

    function concat(uint256[] memory data, uint256 y) internal pure returns (uint256[] memory z) {
        for (uint i = 0; i < data.length; i++) {
            z[i] = data[i];
        }
        z.push(y);
    }

    function max(uint256[] memory a) internal pure returns (uint256 m) {
        m = a[0];
        for (uint i = 1; i < a.length; i++) {
            if (a[i] > m) {
                m = a[i];
            }
        }
    }

    function min(uint256[] memory a) internal pure returns (uint256 m) {
        m = a[0];
        for (uint i = 1; i < a.length; i++) {
            if (a[i] < m) {
                m = a[i];
            }
        }
    }

    function sum(uint256[] memory data) internal pure returns (uint256) {
        uint256 s = 0;
        for (uint i = 0; i < data.length; i++) {
            s += data[i];
        }
        return s;
    }

    function valueOf(uint256 idx, uint256[] memory data) internal view returns(uint256) {
        if (idx < 0) return 0;
        return data[idx];
    }

    function valueOfNext(uint256 idx, uint256[] memory data) internal view returns(uint256
