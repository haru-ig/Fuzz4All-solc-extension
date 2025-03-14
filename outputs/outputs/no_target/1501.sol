pragma solidity ^0.8.0;
contract Semantic0034 {
    bytes x;
    function same() public pure {
        uint x = uint8(-1);
        if (true) {
            x = 5;
        } else {
            x = uint8(-1);
        }
        x = uint8(-1);
    }
}
contract Semantic0034 {
    uint x;
    function same() public pure {
        x = 5;
        require(x == 5);
        x = x + 1;
    }
}
contract Semantic0034 {
    uint x;
    function same() public pure {
        x = 5;
        require(x == 5);
        x = x + 1;
    }
}
contract Semantic0034 {
    uint x = 14;
    function same() public pure {
        x = 5;
        require(x == 5);
        x = x + 1;
    }
}
contract Semantic0034 {
    uint x;
    function same() public pure {
        bool v;
        uint8 w;
        uint16 y;
        y = uint16(-1);
        v = (bytes.length(x) >= 1);
        w = uint16(uint8(x));
        w = y + uint(uint8(x)) + 3;
        x = 5;
        require(x == 5);
        v = false;
    }
}
contract Semantic0034 {
    uint x;
    function same() public pure {
        uint8 v;
        uint8 w;
        uint w0;
        w = uint8(x);
        w0 = uint(x);
        v = uint8(v);
        require(!v);
        w = uint(bytes.length(x) >= 1);
        w = w + bytes.length(x);
        w = x + bytes.length(x);
        x = 5;
        require(x == 5);
        require(bytes.length(x) == (uint16)(uint8.max - 1));


        v = 5;
    }
}
contract Semantic0034 {
    uint x;
    function same() public pure {
        uint8 v;
        uint8 w;

        w = uint8(uint16(-1) & (bytes("")));
        w = w + uint(uint8(v));
        x = 5;
        require(x == 5);

        w = bytes1(uint8(v));
        w = bytes(uint8(w));

        uint wbytes;
        wbytes = uint(bytes.length(x) >= 1);


        v = 5;
    }
}
contract Semantic0034 {
    uint
