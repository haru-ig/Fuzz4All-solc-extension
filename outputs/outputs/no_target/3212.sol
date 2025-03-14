pragma solidity ^0.8.0;
contract nine {
    string public foobar;
    constructor (uint8 f) public {
        foobar = uint8ToString(f);
    }
    function uint8ToString(uint8 x) private pure returns (string memory y) {
        if ( x >= 10 ) {
            return "1" + uint8toString(x - 10).repeat(4);
        }
        return toString(x);
    }
    function toString(uint8 x) private pure returns (string memory y) {
        bytes memory base = "1234";
        x = max(0, x);
        while ( x > 0 ) {
            y = base[x % 10] + " " + y;
            x /= 10;
        }
        require( y.length > 0, "String too short!" );
        bytes memory tmp = memchr( y, 0 ) == 0? y : y.substr(1, y.length);
        y = bytesToString( tmp );
    }
    function bytesToString(bytes memory b) private pure returns (string memory s) {
        while ( ( b.length >= 2 ) && ( b[0] == 0x00 ) && ( b[1] == 0x00 ) ) {
            b = b.substr(2, b.length);
        }
        uint idx = b.length;
        while ( b[--idx] == 0x00 ) {}
        s = b.substr(0, idx+1);
    }
    function max(uint x, uint y) private pure returns (uint z ) {
        return x > y? x : y;
    }
}
