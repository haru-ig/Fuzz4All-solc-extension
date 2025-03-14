pragma solidity ^0.8.0;
contract Test69d {
    event GapEvent(uint x);


    State memory _x;
    constructor() public {


    }
    function bar() public {
        for (uint i = 0; i < 6; i++) {
            _x[6 - i - 1].flag;
            _x[6 - i - 1].flag2;
            _x[6 - i - 1].flag3;
        }
    }
    function baz() public {
        for (uint i = 0; i < 6; i++) {
            GapEvent(x[6 - i - 1].flag + y[6 - i - 1].flag + z[6 - i - 1].flag);
            _x[6 - i - 1].flag;
            _x[6 - i - 1].flag2;
            _x[6 - i - 1].flag3;
        }
    }
}

pragma solidity ^0.8.0;
contract Test70d {
    enum Colors { Red, Green, Blue }
    struct Data {
        enum Color {
            NoColor,
            RedColor,
            GreenColor,
            BlueColor
