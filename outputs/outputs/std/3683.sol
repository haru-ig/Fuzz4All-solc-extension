pragma solidity ^0.8.0;
contract Random {
    function random() public pure returns (uint) {
        return uint(math.random());
    }
}
