pragma solidity ^0.8.0;
struct DerivedData2 {
    uint data;
    uint256 data2;
    bytes32 x;
}
contract Derived is Isolate_Test, IsolateData2{

    IsolateData2 internal isolate_data2;
    uint256 internal use_as21;

    mapping (bytes32 => uint8) internal a22;
    mapping (uint8 => bool) internal a222;
    bytes32[] internal b2;

    function _test43_derived_set_mapping(uint x) public view returns (uint){
        return 0;
    }

    function _test44_derived_set_mapping_new() public view returns (uint){
        return 0;
    }

    function _test45_derived_set_mapping_nested(uint x) public view returns (uint) {
        return _test43_derived_set_mapping(x);
    }

    constructor() public {

        b2.push(bytes32('hi2'));
        a22[bytes32('a22')] = 2;
        a22[bytes32('a22.a22')] = 2;
        a22[bytes32('a.ab')] = 1;
        a22[bytes32('a.ab.ac')] = 2;
        a22[bytes32('a.ab.ac2')] = 2;
        a22[bytes32('a.ac.ac2')] = 1;
        a22['a.ac2.ac22'] = 2;
        a22['a.b.b2'] = 2;
        a22['a.b.b2.aa'] = 1;
        a222[11] = false;
        a222[20] = 1;
        a222[30] = 0;
        a222[40] = 0;
        use_as21 = isolate_data2.use_as21;
    }
}
