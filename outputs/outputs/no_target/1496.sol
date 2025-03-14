pragma solidity ^0.8.0;
contract Semantic0034 {
    bytes x;
    function same() public pure {

        uint x;
        if (true) {
            x = 0;
        }
        x = 0;
    }
}
contract Semantic0035 {
    bytes x;
    function same() public pure {


        uint x;
        if (true) {
            x = 0;
        }
        x = 0;
    }
    function same2() public pure {

        uint x;
        if (true) {
            x = 0;
        }
        x = 0;
    }
}
contract Semantic0036 {
    bytes x;
    function same() public pure {

        uint8 _x = 0;

        uint x;
        if (_x > 0) {
            x = 0;
        }
        x = 0;
    }
}
