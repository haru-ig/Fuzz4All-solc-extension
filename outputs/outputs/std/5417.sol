pragma solidity ^0.8.0;

    function f() public pure returns (uint) {
        uint result = 5500;
        uint result2 = 20 * 100 + 50 * 00;
        uint result3 = 20 * result;
        uint result4 = result3 + result;
        uint result5 = result3 / 5;
        return result4 + result5;
    }
}
