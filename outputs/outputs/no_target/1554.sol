pragma solidity ^0.8.0;
contract Semantic0022 {
    function equal() public pure {
        uint x;
        x = 0;
        while(x == 0) x = 1;
    }
}
contract Semantic0022 {
    uint x;
    uint256 y;

    function equal() public pure {
        uint x;
        uint256 y;
        while(x == 0) {
            x = 0;
            y = 0;
        }
        x = 1;
        while(x == 1) {
            x = 1;
            y = 1;
        }
    }
}
contract Semantic0022 {
    uint x;
    uint256 y;

    function equal() public pure {
        uint x;
        uint256 y;
        while(x == 0) {
            x = 0;
            y = 0;
        }
        x = 1;
        y = 1;
        while(x == 1) x = 1;
    }
}
contract Semantic0022 {
    uint x;
    uint256 y;

    function equal() public pure {
        uint x;
        uint256 y;
        while(x == 0) {
            x = 0;
            y = 0;
        }
        x = 1;
        while(x == 1) {
            x = 1;
            y = 1;
        }
        x = 1;
        while(x == 1) y = 1;
    }
}
contract Semantic0022 {
    uint x;
    uint256 y;

    function equal() public pure {
        uint x;
        uint256 y;
        while(x == 0) {
            x = 0;
            y = 0;
        }
        x = 1;
        while(x == 1) {
            x = 1;
            y = 1;
        }
        x = 1;
        while(x == 1) x = x + 1;
    }
}
contract Semantic0022 {
    uint x;
    uint256 y;

    function equal() public pure {
        uint x;
        while(x!= 0) {
            x = 0;
            x = 1;
        }
        x = 1;
        x;
    }
}
pragma solidity >= 0.4.24;
