pragma solidity ^0.8.0;
contract L6 {
    uint constant initialx = 0x01456001;
    uint f() public pure returns (uint) {
        require(initialx <= 0x7F7FFFFF);
        return initialx + 0x01ff0000 + 0x003fe806 + initialx + 0x02363400 + initialx;
    }
}
