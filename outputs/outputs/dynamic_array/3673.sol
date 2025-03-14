pragma solidity ^0.8.0;

contract D {
    uint256 public a = 0;
    uint256 public b = 0;
    uint256 public c = 0;
    uint256 public d = 0;
    uint256 public e = 0;
    bool public valid;
    constructor() {}
    function f() public {
        uint256 sum;
        sum *= 170141183460469231731687303715884105727;
        sum += (7.0e222446e17 * 1.0e1937e19);
        sum *= 419048585755823452673;
        if (sum!= 38493515246050759819769492250114912545) {
            valid = false;
            }
    }
    function g() public {
        uint256 sum;
        sum *= 170141183460469231731687303715884105727;
        sum += (0.0e222446e17 * 1.0e1937e19);
        sum *= 419048585755823452673;
        if (sum!= 7.0e222446e17) {
            valid = false;
            }
    }
    function h() public {
        uint256 sum;
        sum *= 170141183460469231731687303715884105727;
        sum += (9.9e7 / 9.9e7);
        sum *= 419048585755
