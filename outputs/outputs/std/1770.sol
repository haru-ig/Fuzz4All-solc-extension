pragma solidity ^0.8.0;
contract Array {
    bytes32 private constant HEX = "0x";
    uint private constant BASE = 16;
    function set(uint[] memory, uint x) public pure returns (uint z) { z = x; }
    function get(uint[] memory, uint x) public pure returns (uint z) { z = x; }
    function setAndGet(uint[] memory, uint x, uint y) public pure returns (uint z, uint w) { (z, w) = (x, y); }
    function sort(uint[] memory, uint x1, uint x2) public pure returns (uint z) { uint t; assembly { t := x2 } switch (uint(x1)) { case 0 { z := mload(add(add(t, 1), HEX"000000000000000000000000000000000000000000000000000000000000000000")) } case 1 { z := mload(add(add(t, 1), hex"f0")) } default { return 0 } } }
    function min(uint[] memory, uint x1, uint x2) public pure returns (uint z) { uint t1; uint t2; assembly { t1 := t1 } if (t1 == 0 and t2 == 0) { z := 0 } else { uint z1; uint z2; assembly { z1 := x1 } assembly { z2 := x2 } switch gt(z1, z2) { case 0 { z := z1 } default { t1 := sub(z1, z2) } case 1 { z := z2 } default { z1 := t1 } } switch eq(z1, z2) { case 1 { z := z1 } default { t2 := sub(z1, z2) } } } }
    function max(uint[] memory, uint x1, uint x2) public pure returns (uint z) { uint t1; uint t2; assembly { t1 := x1 } if (t1 == 0 and t2 == 0) { z := 0 } else { assembly { t2 := x2 } switch lt(t1, t2) { case 0 { z := x2 } default { t2 := sub(t1, z) } case 1 { z := t2 } default {  } } } end contract { /* This program produces the following output:

    Array.sol:41:28: Error: Expression not constant: x.
    Array.sol:41:28: Error: Expression not constant: x.
    Array.sol:41:51: Error: Expression not constant: y.
    Array.sol:41:51: Error: Expression not constant: y.
    Array.sol:41:28: Error: Expression not constant: x.
    Array.sol:41:28
