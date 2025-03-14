pragma solidity ^0.8.0;
struct Mutated {

}
contract C {
    uint x;
    uint y;
    uint z;
    uint x_;
    uint[] array;
    mutated Semantic semantic;
    uint y_;
    uint z_;
    bool a;
    mapping (uint => Semantic) semantic_a;
}
contract TestMutated is C{
    function set_y(uint y) { semantic.y_ = y; }
    function set_z(uint z) { semantic.z_ = z; }
    function set_a(bool a) { semantic.a = a; }
    function set_x(uint x) { semantic.x = x; }
    function set_y_(uint _semantic_y) { semantic.y_ = _semantic_y; }
    function set_z_(uint _semantic_z) { semantic.z_ = _semantic_z; }
    function set_array_0(uint _semantic_x) { array[0] = uint160(_semantic_x); }
    function set_array_1(uint _semantic_y) { array[1] = uint160(_semantic_y); }
    function set_array_2(uint _semantic_z) { array[2] = uint160(_semantic_z); }
    function set_array_10(uint _semantic_y_) { array[10] = uint160(_semantic_y_); }
    function set_array_11(uint _semantic_z_) { array[11] = uint160(_semantic_z_); }
    function set_array_20(uint _semantic_y_) { array[20] = uint160(_semantic_y_); }
    function set_array_21(uint _semantic_z_) { array[21] = uint160(_semantic_z_); }
    function set_semantic_1(uint _semantic_x) { semantic_a[1] = Semantic(_semantic_x); }
    function set_semantic_2(uint _semantic_z) { semantic_a[2] = Semantic(_semantic_z); }
    function set_semantic_3(uint _a) { semantic.y_ = uint16(_a); semantic.z_ = uint16(_a); }
    function set_semantic_4(uint _a) { semantic.y_ = uint16(_a + _a); semantic.z_ = uint16(_a + _a); }
    function set_semantic_5(uint _a) { semantic.x = uint16(_a + _a); semantic.z_ = uint16(_a + _a); }
    function set_semantic_6(uint _a) { semantic.y_ = uint16(_a + _a + _a); semantic.z_ = uint16(_a + _a + _a); }
    function set_semantic_7(
