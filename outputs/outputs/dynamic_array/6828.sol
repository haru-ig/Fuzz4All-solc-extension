pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics5 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    function Emit2(TestCase[] calldata input) public {
        emit Emit0(input[1]);
        emit Emit1(uint256(input[0]));
    }
}
