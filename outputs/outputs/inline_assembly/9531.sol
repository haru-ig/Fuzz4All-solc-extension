pragma solidity ^0.8.0;
contract MyContract {
    mapping (uint => uint) uint_map;
    bytes32[] my_list;
    uint8 a = 1;
    uint16 b = 1;
    double c = 1;
    float d = 1;
    function foo() public {
        uint_map[uint_map.length + 1] = a + b + c + d * 7.0;
        for (uint i = 0; i < uint_map.length; i++) {
                my_list[i] = msg.sender + uint_map[i];
        }
    }
}
