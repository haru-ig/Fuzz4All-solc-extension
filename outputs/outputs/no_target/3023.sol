pragma solidity ^0.8.0;
contract third {
    uint16 x;
    function g() public pure {
        bytes1 x = "\x00";
    }
    function h() public pure {
        x = 358;
    }
}

pragma solidity ^0.8.0;
contract third {
    bytes1 x;
    function g() public pure {
        x = "\x00";
    }
    function h() public pure {
        x = 358;
    }
}

contract third {
    bytes32 f1;
    function g() public pure {
        f1 = 0xFA08213DFE7252128DB6865DEBC4D7486714C8335C42B3F75BFF9A406B2076CE;
    }
    function h() public pure {
        f1 = "0x100";
    }
}
contract third0 {
    bytes public data;
    function f() public pure {
        data = "foo";
    }
    function h() public pure {
        data = "bar";
    }
}
