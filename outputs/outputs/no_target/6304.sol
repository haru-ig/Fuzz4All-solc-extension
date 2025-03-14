pragma solidity ^0.8.0;
contract C1 {
    function set(uint x) public {
        uint x_;
        uint x__ = x - 1;
    }
}
contract C2 {
    function set(uint x) public {
        uint x__;
        address x_;
        uint x__ = uint(mycall(bytes4(keccak256('set(uint)'))));
    }
    function mycall(bytes4 _sig) public pure returns (uint) {
        switch (_sig) {
            case bytes4(keccak256('set(uint)')): return 1;
            default: revert();
        }
    }
}

pragma solidity ^0.8.0;
contract C3 {
    function set(uint x) public {
        address x_;
        uint x__ = uint(mycall());
    }
}
