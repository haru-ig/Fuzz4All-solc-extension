pragma solidity ^0.8.0;
interface I1 {
    function use(bytes1 a) external;
}

contract A is I1 {
    mapping (uint256 => bytes4) public x;
    function use(bytes1 a) external {
        uint256 j = 0;
        x[j][0xf0] = a;
    }
}
contract C {
    function get(address self) external view returns (bytes1) {
        return I1(self).use(0xf0);
    }

    function get(address self) external view returns (bytes1, bytes1) {
        return I1(self).use(0xF0, 0x48);
    }
}
