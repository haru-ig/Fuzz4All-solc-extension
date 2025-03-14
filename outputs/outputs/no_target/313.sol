pragma solidity ^0.8.0;
contract B {
    function a() public {
        uint x = 0;
        while (x < 10) {
            uint y = _mutable();
            x += y;
        }
    }
    uint private _mutable();
}
contract S {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public _mutable;
    function a() public {
        uint256 x = 0;
        while (x < 10) {
            uint y = _mutable();
            x += y;
        }
    }
    function b() public immutable {
        uint256 x = 0;
        while (x < 10) {
            uint y = _mutable();
            x += y;
        }
    }
}
contract X {
    function a() public {
        uint x = 0;
        while (x < 10) {
            uint y = immutable();
            x += y;
        }
    }
    uint immutable _mutable;
}
contract Y {
    function a() public {
        uint x = 0;
        while (x < 10) {
            uint y = immutable();
            x += y;
        }
    }
    uint immutable _mutable;
}
contract A is ImmutableMutatedMutatedMutated, B, S, X, Y {
}
