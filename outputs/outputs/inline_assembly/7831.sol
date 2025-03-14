pragma solidity ^0.8.0;
contract L16 {
    struct Store { uint x; }
    uint y = 5;
    uint x = 0;
    function contractAdd(Store memory s1, Store memory s2) public {
        s1.x = s1.x + s2.x + y;
        y = 3;
    }
    function contractSubtract(Store memory s1, Store memory s2) public {
        s1.x = s1.x - s2.x - y;
        y = 6;
    }
}
contract L16 {
    struct Store { uint x; }
    uint z = 4;
    uint x = 0;
    function contractAdd(Store memory s1, Store memory s2) public {
        x = x + s1.x + s2.x;
        z = z + 5;
    }
    function contractSubtract(Store memory s1, Store memory s2) public {
        x = x - s1.x - s2.x;
        z = z - 4;
    }
    function contractMultiply(Store memory s1, Store memory s2) public {
        x = x * s1.x * s2.x + z;
        z = z * 8;
    }
    function setStoreData(uint _x) public {
        x = _x;
    }
}
