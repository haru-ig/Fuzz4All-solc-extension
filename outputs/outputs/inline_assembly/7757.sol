pragma solidity ^0.8.0;
contract L37 {
    uint256 x;
    function add1(uint256 y) public {
        function add(uint256 x, uint256 y) pure internal returns (uint256) {
            return x + y;
        }
        x = add(x,y);
    }
}
