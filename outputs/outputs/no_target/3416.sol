pragma solidity ^0.8.0;
contract m04 {
    struct M1 {
        string _field1;
    }
    function M1() public {
        M1 storage m = M1(m1);
        bytes memory b = m._field1;
        bytes memory c = stringToBytes32("123456789");
        if (2 + 3 + bytes32(1) + 23 > 123 && (1 + 15) > 255 || (23 || 110) > 99 || "str" > "") {

        }
    }
}
