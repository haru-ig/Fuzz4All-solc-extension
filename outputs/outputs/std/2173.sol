pragma solidity ^0.8.0;
contract Mutated_5_5 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
    }
    mapping(uint => MyStruct) public test;
    function min4(uint x, uint y) public pure returns (uint) {
        uint z = x;
        x = x <= 1? y : x;
        x = x <= x? x : x;
        (z, x) = (x, x^1);
        return x + z;
    }
    function valueAt(uint i) public view returns (MyStruct memory) {
        uint t;
        (uint z, t) = (test[i].x, test[i].y + 1);
        for (uint _i = 0; _i < 3; _i++) {
            z = test[i].z;
            if (t <= z) {
                (z, t) = (test[i].z, z + _i);
                break;
            }
        }
        return MyStruct(z, t, max6(z, t));
    }
    function getValue() public view returns (uint) {
        uint x = 8750;
        uint y = 4800;
        x = min4(x, y);
    }
}
