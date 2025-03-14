pragma solidity ^0.8.0;
contract semanticallyEquiv9{
}
contract semanticallyEquiv10{
    uint160 x = uint160(0x1200000000000000000000000000000000000);
}
contract semanticallyEquiv11{
    address x = address(uint160(1200000000000000000000000000000000000));
}
contract semanticallyEquiv12{
    struct {
        uint256 x;
        uint256 y;
    } u;
}
contract semanticallyEquiv13{
    function f() public pure {
        uint x = 0;
    }
}
contract semanticallyEquiv14{
    function f() public pure {
        uint x = uint();
    }
}
contract semanticallyEquiv15{
    function f() public pure {
        uint[9] memory array;
        array.x = uint();
    }
}
contract semanticallyEquiv16{
    function f() public pure {
        uint[9] memory array;
        array.x = uint(uint256(-1));
    }
}
contract semanticallyEquiv17{
    function f() public pure {
        uint[9] memory array;
        array.x = uint(uint8(-1));
    }
}
contract semanticallyEquiv18{
    function f() public pure {
        uint[9] memory array;
        array.x = uint(uint16(-1));
    }
}
contract semanticallyEquiv19{
    function f() public pure {
        uint[9] memory array;
        array.x = uint(uint32(-1));
    }
}
contract semanticallyEquiv20{
    function f() public pure {
        uint[9] memory array;
        array.x = uint8(uint(-1));
    }
}
contract semanticallyEquiv21{
    function f() public pure {
        uint[9] memory array;
        array.x = uint16(uint(uint(-1)));
    }
}
contract semanticallyEquiv22{
    function f() public pure {
        uint[9] memory array;
        array.x = uint32(uint(uint16(uint(uint(-1)))));
    }
}
