pragma solidity ^0.8.0;
contract Isolate {
    mapping(uint => bytes32) a1;
    mapping(uint => bytes32) b1;
    mapping(uint => bytes32[]) dynamic_array;
    constructor () {
        dynamic_array[0] = a1;
        dynamic_array[1] = b1;
    }
    function get_dynamic_array() public view returns (bytes32[] memory) {
        bytes32[] memory ret_mem ;
        bytes32[][] memory dynamic_array_2 = dynamic_array;
        for (uint i = 0; i < 2;){
        	ret_mem.push(a1[0]);
        	ret_mem.push(b1[0]);
        	ret_mem.push(...dynamic_array[i++]);
        }
        return ret_mem;
      }
    function set(uint i, bytes32 arg){
        dynamic_array[i] = new bytes32[](1);
        dynamic_array[i++][0] = arg;
    }
    function del(uint i){
        bytes32[] memory del_arg = dynamic_array[i];
        require(del_arg.length <= 1);
        delete dynamic_array[i];
    }
    function delall(){
       for (uint i = 0; i < 2;){
      	 del(i++);
    }
    }
    function empty() public view returns (bool) {
        if (a1.length == 0 && b1.length == 0) {
            return true;
        } else {
            return false;
        }
    }
    function print() public view returns (bool, bytes[] memory) {
        bool ret;
        bytes memory ret_mem;
        if (a1.length == 0 && b1.length == 0){
            return (true, ret_mem);
        }else{
            ret = true;
            int i = 0;
            ret_mem = new bytes(72 * 2);

            if (a1.length!= 0){
                ret_mem = _putStrmem(ret_mem, "a1: ");
                for (uint j = 0; j < a1.length; ++j){
                    _putStrmem(ret_mem, a1[j]);
                    ret_mem = _putMemMemStr(ret_mem, ',');
                }
            }
            ret_mem = _putMemMemStr(ret_mem, '\n');

            if (b1.length!= 0){
                ret_mem = _putStrmem(ret_mem, "b1: ");
                for (uint j = 0; j < b1.length; ++j){
                    _putStrmem(ret_mem, b1[j]);
