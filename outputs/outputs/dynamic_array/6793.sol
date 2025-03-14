pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_struct_array_abi_encoding {
    struct TestCase { uint256 a; }
    struct Foo { uint32 d; uint16[8] b; uint256[11][11] c; uint256 e; }
    function set(Foo[] memory x) public {
        uint32 s = x[1].d;
        emit Emit02(s);
    }
    event Emit02(uint32 s);

    function set2() public {
        set(new[11][11][11]{
            case 2: case 4: case 6:
        }[]);
    }
}
