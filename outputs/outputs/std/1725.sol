pragma solidity ^0.8.0;
contract NoEvents{
    address[] private _a;
    uint8 _b;
}
contract MyStorage {
    uint256 x = 1;
    uint256 [6] myArray = [1, 2, 3, 4, 5, 6];
    function m() public pure returns(uint256) {
        return x + 2;
    }
    function i() public pure returns(uint256) {
        return 0;
    }
}
