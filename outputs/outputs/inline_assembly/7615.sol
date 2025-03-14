pragma solidity ^0.8.0;
contract L2 is L3 {
    function g() public pure returns (uint y) {
        uint _tmp = f();
        return _tmp - 0x4DE37D4F01234567;
    }
}
