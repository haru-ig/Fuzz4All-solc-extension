pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;
    uint constant y = 0;
    uint constant a = 0;
    function mutatedExample() public {
        uint _tmp2 = a + 10;
        uint _tmp3 = x + 10;
        uint _tmp4 = y + _tmp2;
        uint _tmp5 = _tmp4 + _tmp3;
        uint _tmp6 = (x + _tmp4 + _tmp5) + y;
    }
}
