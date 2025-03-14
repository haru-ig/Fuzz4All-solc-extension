pragma solidity ^0.8.0;
contract DynamicArrayTest {

    function multiply123(uint256 x) public returns (uint256 z) {
        z = x * 123;
        return z;
    }

    function multiply1111(uint256[11111][11] storage z) public returns (uint256 z2) {
        z2 = multiply1111(0);
        return z;
    }
}
