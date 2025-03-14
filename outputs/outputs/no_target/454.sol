pragma solidity ^0.8.0;
struct Mutable {

    bool y;
    bool z;
    uint8[1] p;
	uint8[4] q;
}

contract CompactArithmetic {
    function compaction() public pure {
        bool b = 1 < 3;
        bool s = uint16(b) == 1;


    }
}
