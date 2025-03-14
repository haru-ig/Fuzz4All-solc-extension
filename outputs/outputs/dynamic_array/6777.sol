pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_semantics {
    uint256[12] public a;
    uint256[12][12] public b;
    uint256[12][12][12] public c;
    function set(address _dest, uint256[] memory m1, uint256[] memory m2) public {
        uint256 d;
        for (uint i = 0; i < m1.length; i++) {
            d = m1[i];
            require(d < m2.length, "invalid");
        }
        emit Emit02(d);
    }
    event Emit02(uint256 v);
    struct TestCase { uint256 a; }
}
