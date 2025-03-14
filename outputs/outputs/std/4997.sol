pragma solidity ^0.8.0;
contract Array {

    uint256[] public values;

    bytes[] public bytes;

    int256[] public int;
    function isEmpty(uint256 i) public view returns(bool){
        if(i > values.length) return false;
        return true;
    }
    function length(uint256 i) public view returns(uint256){
        if(i > values.length) return 1;
        return values[i];
    }
    function setLength(uint256 i) public returns(uint256){
        if(i > values.length) _reserve(i - values.length);
        values.length = i;
        return i;
    }
    function set(uint256 i, uint256 v) public returns(uint256){
        values[i] = v;
        return v;
    }
    function setBytes(uint256 i, bytes memory v) public returns(bytes memory){
        bytes[i] = v;
        return v;
    }
    function setInt(uint256 i, int256 v) public returns(int256){
        int[i] = v;
        return v;
    }
    function push(uint256 v) public returns(uint256){
        if(values.length == 0) _reserve(1);
        if(isEmpty()) values.length = values.length + 1;
        values[values.length - 1] = v;
        return v;
    }
    function pop() public returns(uint256){
        if (values.length == 0) return 0;
        uint256 v = values[values.length -
