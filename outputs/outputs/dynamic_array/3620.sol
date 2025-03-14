pragma solidity ^0.8.0;
contract C {
    uint256 a;
    mapping(uint256 => uint256) public b;
    function c() public {
        uint numKeys = 10;
        for (uint i = 0; i < numKeys; i++) {
            uint256 key = i;
            uint256 value = 0;
            b[key] = value;
        }
        require(b[numKeys]!= 0);
        require(b[numKeys] == b[numKeys-1]);
        a = 250;
        b[numKeys] = a;
        require(b[key] == a);
    }
}
