pragma solidity ^0.8.0;
contract Mutate_0012_v38 is Mutate_0012, Mutate_0012_v39 {
    function mySub_14(uint8 _x) public pure returns(uint8) {
        uint16 a = uint16(_x);
        uint16 b = uint16(_x+1);
        return a - b;
    }
}
