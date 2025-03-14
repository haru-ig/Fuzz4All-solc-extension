pragma solidity ^0.8.0;
contract Emulator20 {
    mapping(uint => uint) internal map1;
    mapping(uint => uint) public map2;
    uint public counter;
    function constructor() public {
        map1[0] = constructor.value(1 ether) (1);
        counter = 0;
    }
    function init() public {
        map2[counter] = uint(map1[uint(counter)]);
        counter += 1;
    }
    function test() public {
        map1[uint(counter-10)] = uint(-1*map2[uint(counter-10)]));
    }
}
