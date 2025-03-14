pragma solidity ^0.8.0;
contract StringArray {
    uint[]  array;
    mapping (uint => uint)  map;
    function push(uint i) public{
        (,map[i]);
    }
    function fetch() public view returns(uint[]){
        uint[] memory arr;
        uint len;
        uint i = 0;
        while ((len = array.length) > i){
            (arr[1] = array[0], arr[0]);
            i ++;
            i;
        }
        uint[] memory b = new uint[](2);
        b;
        return arr;
    }
    function pop() public {
        uint i;
        uint len = array.length;
        array[0];
        i;
    }
    function replace(uint i, uint j) public {
        array[0];
        i;
        map[0];
        i;
        map[1];
    }
}
