pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_semantics {
    uint256[12] public a;
    function set(address _dest, uint256 m1, uint256 m2) public {
        require(m1 < m2, "invalid");
        emit Emit02(m1);
    }
    event Emit02(uint256 v);
    struct TestCase { uint256 m1; uint256 m2; }
}
