pragma solidity ^0.8.0;
contract Solidity08 {
    function add() public pure returns (uint) {
        return 6 + UintWrapper.x();
    }
     function sub() public pure returns (uint) {
        return UintWrapper.x() - 6;
    }
}
