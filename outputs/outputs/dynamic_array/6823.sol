pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);
    struct TestCase { bytes c; uint256 d; }
    mapping(uint256 => TestCase) public x;
    function f(TestCase x) public {
        if (x.a == 0)
            emit Emit0(x.a);
        else if (x.a == 1)
            emit Emit1(x.a);
        else if (x.a == 2)
            emit Emit2(x.a);
        else if (x.a == 3)
            emit Emit3(x.a);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);
    struct TestCase { uint256 a; bytes b; }
    mapping(uint256 => TestCase[]) public x;
    function f(TestCase[] memory x) public {
        if (x.length == 1)
            emit Emit0(x[0].a);
        else if (x.length == 2)
            emit Emit1(x[0].a);
        else if (x.length == 3)
            emit Emit2(x[0].a);
        else if (x.length == 4)
            emit Emit3(x[0].a);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);
    struct
