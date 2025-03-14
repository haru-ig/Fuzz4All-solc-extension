pragma solidity ^0.8.0;
contract Test66 {
    uint8[1] public a;
    uint8[] public b;
    function dynamicArray(uint8[] memory ab) public {
        a[0] = ab[0];
        b[0] = ab[1];
    }
}
