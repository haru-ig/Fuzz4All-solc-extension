pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);

    struct TestCase { uint256 a; bytes b }   x;
    constructor (uint _initSize) {
        emit Emit0(_initSize);
        x.a = _initSize;
    }
    function get() view  returns (uint256) {
        emit Emit1(x.a);
        return x.a;
    }
    function set(uint _val) {
        emit Emit2(_val);
        x.a = _val;
    }
    function update(uint _old, uint _new) {
        emit Emit3(_old);
        x.a = _new;
    }
    function updateAndChange(uint _old, uint _new) {
        update(_old, _new);
        emit Emit3(x.a);
    }
}
