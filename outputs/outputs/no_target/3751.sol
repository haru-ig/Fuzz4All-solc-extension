pragma solidity ^0.8.0;
contract E1 {
    uint24 c;
    uint24 b;
    function g() public {
        require((b > 99999 * (0xFFFFFFFF / 0xFFFFFFFF) / c + 0xFFFFFFFF + (0x52525252525252525252525252525252)), "Wrong value returned");
    }
}

pragma solidity ^0.8.0;
contract E2{
    uint8 v;
    uint8 k;
    uint8 i;
    uint8 i_0;
    function f() public {
        require(k <= 255 / v && i_0 >= (1 << 8) / i && i + i > 0, "Wrong value returned");
    }
}
contract E1 {
    uint24 c;
    uint24 b;
    function g() public {
        require((b > 99999 * (0xFFFFFFFF / 0xFFFFFFFF) / c + 0xFFFFFFFF + (0x525252525252525252525252525252)), "Wrong value returned");
    }
}

contract E2{
    uint8 v;
    uint8 k;
    uint8 i;
    uint8 i_0;
    function f() public {
        i < i_0 && i + 3 < k / i;
        unchecked {
            i < i_0 && i_0 + 3 < k / i_0;
        }
    }
}

pragma solidity ^0.8.0;
contract E3{
    uint b;
    address to_0;
    address to;
    function f() public {
        unchecked {
            require(b, "Wrong value returned for the last 0");
            require(!to, "Wrong value returned for to_0");
            to_0 = to;
            to = msg.sender;
        }
    }
}
contract E4{
    function f() public view {
        address a;
        address b;
        uint b_0;
        uint a_0;
        unchecked {
            a = a_0 + 6;
            b = b_0;
            a_0 = a_
