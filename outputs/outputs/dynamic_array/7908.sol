pragma solidity ^0.8.0;
contract Test26 {
    string[] public stringArrayContract;
    string[] public stringArray;
    mapping (uint256 => uint256) public map;
    function f(uint256 x, uint256 y) public {
        stringArray[x] = "1";
        stringArray[y] = "2";
    }
    function g(uint i) public returns(uint256 z) {
        uint x = i+1;
        return x;
    }
    function h(uint x, uint y, uint z) public returns(uint u) {
        uint ux = x+y;
        u = uint(ux * z);
    }
    function i() public {
        uint256 x = 1;
        uint256 y = uint256(x-y);
        uint256 z = 3;
        map[x] = x;
        map[677] = y;
        map[y] = y;
        string str = "3";
        map["3"] = str;
        map["5"] = x;
        map[str] = str;
        map[7] = x+y;
    }
}
