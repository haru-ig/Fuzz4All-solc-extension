pragma solidity ^0.8.0;

struct MyUintArray {
    uint256[] data;
    constructor(uint _i) public {
        data = new uint256[](_i);
        for (uint j = 0; j < i; j++) {
            data[j] = uint256(0);
        }
    }
    function get(uint x){
        require(uint256(data[x]) >= 0);
        return uint256(data[x]);
    }
    function set(uint x, uint y){
        require(uint256(data[x]) >= 0);
        require(uint256(y) >= 0);
        data[x] = uint256(y);
    }
    function push(uint y) public {
        data.push(y);
    }
    function pop() public {
        data.pop();
    }
    function swap(uint a, uint b) public {
        uint temp = data[a];
        data[a] = data[b];
        data[b] = temp;
    }
}
