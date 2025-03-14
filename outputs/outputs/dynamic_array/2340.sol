pragma solidity ^0.8.0;
contract Test_1005 {
    mapping(uint256 => Test_1005_DynamicallySizedNestedArrayAssignment_43424ef0a780a2431f45f4912082b552) public data;
    function get_nested_contract_storage(uint100 i) public view returns (Test_1005_DynamicallySizedNestedArrayAssignment_43424ef0a780a2431f45f4912082b552){
        Test_1005_DynamicallySizedNestedArrayAssignment_43424ef0a780a2431f45f4912082b552 result = data[i];
        return result;
    }

    function set_contract_storage(uint100 pos, Test_1005_DynamicallySizedNestedArrayAssignment_43424ef0a780a2431f45f4912082b552 a) external returns (bool){
        data[pos] = a;
        return true;
    }
}
