pragma solidity ^0.8.0;
interface I16 {
    function add(int128) external pure returns(int128);
    function pow(int128) public pure returns(int128);
}
library Lib5
{
    function pow5(int128 a) public pure returns (int) {
        return (a * 2) ** 2;
    }
    function add(int128 a, int128 b) public pure returns (int128) {
        return (a + b);
    }
}

contract C {
    uint value = 13;
    address payable contractContract = payable(address(13));
    function x() internal returns (bool) {
        uint x = I16(contractContract).add(14);
        uint y = I16(address(13)).add(float(1000));
        assembly { if eq(0, 0) { x := x + 10 } }

        value += Lib5.pow5(14) + Lib5.add(13, 1) + Lib5.div(13, 2) + Lib5.mul(13, 10);


        bytes memory data = new bytes(8);
        uint32 a;
        assembly { a := mstore(0, 2350887) }
        uint32 b;
        assembly { b := mload(0) }
        _;
        return false;
    }
}
