pragma solidity ^0.8.0;
contract Example11 {
    bytes1 constant A = bytes1(0xaf);
    bytes constant B = b"\xfe";
    function example11() public pure {
        if (A == B) {

        } else {

        }
    }
}
contract Example12 {
    bytes1 constant A = bytes1(0xaf);
    bytes constant B = b"\xfd";
    function example12() public pure {
        if (A == B) {
            revert(0);
        } else {

        }
    }
}
