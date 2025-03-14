pragma solidity ^0.8.0;
contract LotteryWithCalldataMutated {
    uint private _lotteryId;
    uint256[] internal _nonEqualLotteryIids;
    mapping(uint => bool) internal _nonEqualLotteryIids_;
    event LotteryId(uint _lotteryId);
    event SetNonEqual(uint _lotteryId);
}
