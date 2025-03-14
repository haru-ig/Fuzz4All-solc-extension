pragma solidity ^0.8.0;
contract A {
    function set(Semantic storage s) {
        s.x = true;
        s.y = false;
        s.z = true;
        s.x = false;
        s.y = true;
        s.z = false;
        s.y_ = 1000000000000000;
        s.z_ = 1000000000000000;
        s.x = true;
        Semantic storage s0 = s;
        s0.x = false;
        s0.y_ = 1000000000000000;
    }
    function get(Semantic storage s) returns (bool, bool, bool) {
        return (s.x, s.y_, s.z_);
    }
}
