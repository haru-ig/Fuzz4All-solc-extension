pragma solidity ^0.8.0;
abstract contract MultiMod {
}
contract SafeMath {
    function safeEqual(uint256 a, uint256 b) public pure virtual returns (bool) {
        return a == b;
    }
}
