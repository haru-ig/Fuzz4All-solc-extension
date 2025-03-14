pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics6 {
    function f1(uint256[] memory dataField) public pure {
        dataField[0] = 17;
        dataField.length = 23;
        uint[] memory a = new uint[](2);
        a[1] = 22;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics7 {
    function f1(uint256[] calldata dataField) public pure {
        dataField[0] = 17;
        dataField.length = 23;
        uint[] memory a = new uint[](2);
        a[1] = 22;
    }
}
