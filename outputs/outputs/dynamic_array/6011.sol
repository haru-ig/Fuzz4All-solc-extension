pragma solidity ^0.8.0;
contract Test89709 {
    uint[] private data = [1,2,3];
    mapping(address => uint) private data2 = [1,2,3];
    event BLADE(uint x);
    function BLADE (uint x) public {
        data[3] = x;
        emit BLADE(data[3]);
    }
    function BLADE2 (uint x) public {
        data2[uint80(owner())] += x;
        emit BLADE(data2[uint80(owner())]);
    }
}
