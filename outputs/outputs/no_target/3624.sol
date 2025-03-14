pragma solidity ^0.8.0;
library L {
    function f(uint)
    internal
    pure
    returns(uint8 _x) {
        uint i = 1 + i;
    }
}

pragma solidity ^0.8.0;
library L {
    function f(uint)
    internal
    pure
    returns(uint8 _x) {
        uint i = 1 + i;
        uint j = i - i;
        uint8 x = getX(i) * j / 2;
    }
    function getX(uint) internal pure returns(uint8 _r) {}
 }

pragma solidity ^0.8.0;
library L {
    function f(uint)
    internal
    pure
    returns(uint8 _x) {
        uint i = 1 + i;
        uint8 a = L.f(i);
    }
}
