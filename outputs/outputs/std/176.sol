pragma solidity ^0.8.0;
contract Arithmetic {
    function add(uint256 x, uint256 y, uint256[] memory a, uint256[] memory b, uint256 length) public pure virtual {
        for (uint i = 0; i < length; i += 1) {
            uint256 c = a[i] + b[i];
            require(c >= (a[i] - b[i]));
            a[i] = c;
        }
    }
}
