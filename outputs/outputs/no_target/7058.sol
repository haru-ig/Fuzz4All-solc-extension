pragma solidity ^0.8.0;
contract Test {
    function change() public view {
        uint x;
        if (x == 0) {
            x += 10;
        }
        while (x > 10) {
            x += 10;
            if (x == 0) {
                x = 1000;
            }
        }
        x = 1000;
        x += 1000;
    }
}
contract Test {
    function change() public pureview {
        uint x;
        if (x == 0) {
            x += 10;
        }
        for (uint96 i; i < 0x10; ++i) {
            if (x == 0) {
                x += 10;
            }
            while (x > 10) {
                x += 10;
                x += 10;
                if (x == 0) {
                    x = 1000;
                }
            }
            x = 1000;
            x += 1000;
        }
    }
}
contract Test {

    function change() public pure {
        uint x;
        if (x == 0) {
            x += 10;
        }
        while (x > 10) {
            x += 10;
            if (x == 0) {
                x = 1000;
            }
        }
        x = 1000;
        x += 1000;
    }
}
contract Test {

    function change() public pure {
        uint x;
        for (uint96 i; i < 0x10; ++i) {
            if (x == 0) {
                x += 10;
            }
            while (x > 10) {
                x += 10;
                x += 10;
                if (x == 0) {
                    x = 1000;
                }
            }
            x = 1000;
            x += 1000;
        }
    }
}
contract Test {

    function change() public pure {
        uint x;
        x = 1000;
        if (true) {
            x += 1000;
        }
        x = 1000;
        x += 1000;
    }
}
contract Test {
    function change() public pure {
        uint x;
        x = 1000;
        if (true) {
            x += 1000;
        }
        x = 1000;
        x += 1000;
    }
}
