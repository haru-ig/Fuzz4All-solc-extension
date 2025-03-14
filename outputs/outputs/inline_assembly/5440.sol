pragma solidity ^0.8.0;

contract Mutate5 {
    uint _r5;
    function _next() public {
        uint _r5;
        for (uint x; x < 20000; x++) {
            uint r5New;
                if (_r5 < 20000 / 2) {
                      r5New = (_r5 + x);
                      _r5 = r5New;
                } else {
                      break;
                }
        }
    }
}
