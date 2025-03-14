pragma solidity ^0.8.0;
contract Test090009 {
    uint256[][2] d1;
    uint256[][2] d2;
    uint256 f1;
    uint256 f2;
    uint256 g1;
    assembly {d1 := makeSlice(16)}
    assembly {d2 := makeSlice(16, 3)}
    assembly {f1 := calldataload(0)}
    assembly {returndatacopy(0, 256, 256)}
    assembly {g1 := returnsize(0)}
    assembly {returndatacopy(0, 256, 256)}
    assembly {f1 := add(f1, and(mload(3), mload(128))) }
    assembly {g1 := add(g1, 16)}
    assembly {f1 := add(f1, mload(1))}
    assembly {f1 := sub(f1, f1, f1, mload(0))}
    assembly {returndatacopy(0, 256, 256)}
    assembly {d1 := d1.add(0,0, f1, g1)}
    assembly {f1 := add(f1, 0)}
    assembly {returndatacopy(0, 256, 256)}
    assembly {d1 := d1.add(0,0, f1, g1)}
    assembly {d1 := d1.add(0,0, f1, g1, 0,1)}
    assembly {returndatacopy(0, 256, 256)}
    assembly {returndatacopy(0, 256, 256)}
    assembly {returndatacopy(0, 256, 256)}
    assembly {returndatacopy(0, 256, 256)}
    assembly {d1 := slice_add(d1, 0, 0)}
    assembly {returndatacopy(0, 2
