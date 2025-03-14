pragma solidity ^0.8.0;
contract New2 {
    struct Pair {
        uint _firstAmount;
        uint _secondAmount;
    }
    function get(uint _firstAmount_, uint _secondAmount_) public view returns (uint256, uint256) {
        uint256 _tmpAmount = 10 * 10;
       PAIR storage storagePair = storagePairValue();

        uint256 _firstAmount2 = (storagePair._firstAmount - _tmpAmount);
        uint256 _secondAmount2 = (storagePair._secondAmount + (_firstAmount2 * 2));
        return (_firstAmount2, _secondAmount2);
    }
    function storagePairValue() public pure returns (PAIR memory) {
        PAIR memory storagePair;
        return storagePair;
    }
}
