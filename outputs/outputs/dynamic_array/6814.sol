pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);
    struct TestCase { uint256 a; bytes b; }
    function f(TestCase memory m) public {
        emit Emit0(m.a);
        emit Emit1(m.b);
        emit Emit2(m.a);
        emit Emit3(m.a);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics5 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);
    struct TestCase { uint256 a; bytes b; }
    function f(TestCase memory m) public pure { emit Emit0(m.a); emit Emit1(m.a); emit Emit2(m.a); emit Emit3(m.a); }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics6 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);
    struct TestCase { uint256 a; bytes b; }
    function f() public pure { emit Emit0(123); emit Emit1(123); emit Emit2(456); emit Emit3(789); }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics7 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(
