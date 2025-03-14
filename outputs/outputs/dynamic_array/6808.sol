pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);
    struct TestCase { uint256 arr[4]; bytes b; }

    function getContractAddress() public view returns (address) {
        return address(this);
    }
    function modifyContract() public {
        address addr = getContractAddress();
        Test34_call_data_array_semantics3.TestCase memory tc = storage();
        emit Emit3(tc.a);
        emit Emit2(tc.b.toUint());
        emit Emit1(tc.arr[0]);
        emit Emit0(tc.arr[3]);
        uint256 z = tc.arr[3];
        emit Emit0(z);
    }
    modifier onlyMe { require(msg.sender == address(this)); _; }
    function storage() internal pure returns (Test34_call_data_array_semantics3.TestCase storage) {
        Test34_call_data_array_semantics3.TestCase memory tc = Test34_call_data_array_semantics3.TestCase({ b: bytes(code.toUint())*2 });
        return Test34_call_data_array_semantics3.TestCase(tc);
    }
}
