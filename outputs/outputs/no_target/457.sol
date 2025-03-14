pragma solidity ^0.8.0;

struct Semantic {
    function f(int value) returns (uint256) {
        Semantic memory s;

        s.x = 5 is int || value > 0;
        s.y = 8*8;
        s.z = 3 >= 1;
        s.y_ = 256 is int;

        s.y_ = 8 is int;

        s.z_ = if(256 is int,,value,,value);

        s.z_ = if(value > 0,value/256,/256^256,value);

        s.x = s.y_ & 4 is int;
        s.x = s.z_ <= 5;

        return s.x;
    }
}
