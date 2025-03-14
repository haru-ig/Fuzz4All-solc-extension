pragma solidity ^0.8.0;
contract ConstantAccessBlockMutated {
    uint256 x = 3;
    uint public y = 3;
    function test() public returns (bool) {
        uint256 z = x + 1;

        assembly {
            let x := mload(0x60)
            let y := mload(0xa0)
            let z := x + x
            revert(y)
            mstore(0xc0, 0x01)
        }
        return keccak256(abi.encodePacked(z, y)) == keccak256(abi.encodePacked(0x01, 3, 0));
    }
}

pragma solidity ^0.8.0;
contract ConstantAccessBlockOptimized {
    uint x = 3;
    uint public y = 3;
    function test() public returns (uint, bool) {
        uint256 z = x + 1;

        assembly {
            let x := mload(0x60)
            let y := mload(0xa0)
            let z := div(mul(x, x), mul(2, 3))
            revert(y)
            mstore(0xc0, 0x01)
        }
        return (z, keccak256(abi.encodePacked(z, y)) == keccak256(abi.encodePacked(0x01, 3, 0)));
    }
}
