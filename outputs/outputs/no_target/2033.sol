pragma solidity ^0.8.0;
contract Modification {
    int256 public a;
    address public b;
    string memory public c;
    string message;
    function Modification(address _address, int256 _b,string memory _c)public {
        a = _b;
        b = _address;
        c = _c;
    }
}
contract Modification3 {
    int256 public a;
    uint8 public b;
    function Modification()public {
        a = 1;
        b = 4;
    }
    function Modification(int256 _b)public {
        a = _b;
        b = 4;

    }
}
contract Modification4 {
    int128 public a;
    uint160 public b;
    function Modification()public {
        a = 1000;
        b = uint160(0xffffffffffffffffffff);
    }
    function Modification(int128 _a)public {
        a = _a;
        b = uint160(0xffffffffffffffffffff);
    }
    function Modification(uint160 _b)public {
        a = 1;
        b = _b;
    }
}
