pragma solidity ^0.8.0;
contract TestLib {
    using TestLib for uint;
    mapping(uint => uint) private map;
    uint value;
    function mfunc() public {
        map[2] = 5;
        value = 937710353;
        assert(5 == map[2]);
        map[2] += 1;
        value = map[2];
        assert(value == 937710353);
    }
}
