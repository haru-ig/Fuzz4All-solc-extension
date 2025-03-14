pragma solidity ^0.8.0;
contract FunctionalEquivalence_FixedSizeDynamicallySizedArrayAssignment_16 {
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        uint256 x = arr[t];
        arr[t] = val;
        arr[x] = val;
        return idx+2;
    }
}
contract FunctionalEquivalence_NestedCalldataArrays_35 {



    function foo() public {
        uint x;
        bytes memory y = "test";
        bytes memory z = "nested";
        x = 64;
        y = 64;
        z = 64;
        setNestedCalldataArrayAbiReencodingSizeValidation(bytes1([x]), bytes1(y));

        bytes memory y1 = bytes1("test2");
        bytes memory z1 = bytes1("nested2");
        x = 65;
        y1 = 65;
        z1 = 65;
        setNestedCalldataArrayAbiReencodingSizeValidation(bytes1([x]), y1);

        x = 651;
        y1 = 651;
        z1 = 651;
        setNestedCalldataArrayAbiReencodingSizeValidation(bytes1([x]), y1);

        set(NestedCalldataArrayAbiReencodingSizeValidation.data, 0, 1);

        NestedCalldataArrayAbiReencodingSizeValidation[] memory arr;
        bytes [] memory b1;
        bytes [] memory b2;
        bytes [] memory b3;
        uint256 i;
        for (i = 0; i < 11; ++i) {
            b1.push(bytes(bytes1([1]) ));
            b2.push(bytes(bytes1([2]) ));
            b3.push(bytes(bytes1([3]) ));
        }
        bytes1 memory n
