pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_semantics_2_d2 {
    uint256[12] public a;
    uint256[12][12] public b;
    uint256[12][12][12] public c;
    function set(address _dest, uint256[] memory m1, uint256[][] memory m2) public {
        emit Emit00(a);
        emit Emit01(b);
        uint256 d;
        for (uint i = 0; i < m1.length; i++) {
            d = m1[i];
            require(d < m2[i].length, "invalid");
        }
        emit Emit02(d);
    }
    event Emit00(uint256 a);
    event Emit01(mapping(uint256 => uint256) b);
    event Emit02(uint256 c);
    struct TestCase { uint256 a; uint256[] m1; uint256[][] m2; }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_semantics_2_d2_3 {
    uint256[12] public a;
    uint256[12][12] public b;
    uint256[12][12][12] public c;
    function set(address _dest, uint256[] memory m1, uint256[][][] memory m2) public {
        emit Emit00(a);
        emit Emit01(b);
        uint256 d;
        for (uint i = 0; i < m1.length; i++) {
            d = m1[i];
            require(d < m2
