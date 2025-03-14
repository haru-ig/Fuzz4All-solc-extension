pragma solidity ^0.8.0;
contract simple_abi4 {
    string s;
    function f() public pure returns (uint8) {
        s = '111';
        return (uint8)(s.length) + 1;
    }
}
