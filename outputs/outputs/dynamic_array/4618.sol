pragma solidity ^0.8.0;
contract Test {
    struct Store {
        uint length;
        uint[] data;
        bytes32 hash;
    }
    function get(uint index) public view returns(uint){
        return Store({"data":data}, _get(index))();
    }
  function _get(uint index) private view {

  }
  function set(uint index, bool result) public {
    Store memory store = get(index);
    if(store.hash == getHash()) store.data[index] = result;
    if(store.isContract()) _set(index, result);
  }
  function _set(uint index, bool result) private {

  }
}
contract Test2 is Test {
    function set_data(uint index, uint result) public {
        uint[] memory ptr = _getData(index);
        if(store.isContract()) _set(index,result);
    }
    function _getData(uint index) private view returns(uint[] memory ptr) {
        return [_getData(index)+1,{ptr:ptr},0x12345678];
    }
}
contract Test3 is Test2 {
    constructor() Test2() public {
        set_data(0,1);
    }
    function _get(uint index) private view override(Test) returns(uint){
        return Test.calldata_size(0)[1].ptr.ptr[index];
    }
    function _set(uint index, bool result) private override(Test) {
        Test.calldata_size(index +1).ptr.ptr[index] = result;
    }
    function getData() public view returns(uint[] memory ptr){
        return_ptr_size(_set_ptr_size);
    }
    function _set_ptr_size(uint size) public {
        uint x = 0;
        ptr = _getData(0);
        ptr[offset] = x;
        ptr = _getData(offset+1);
    }
}
