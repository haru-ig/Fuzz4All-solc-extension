pragma solidity ^0.8.0;
contract Example13 {
    uint _uint;
    event Log(uint _uint);
    constructor() {
        _uint = 0;
    }
}

pragma solidity 0.8.0;
contract Example20 is Example11, Example12, Example13 {
    event Log(string _string1, string _string2);
    event Log2(uint _uint);
    uint _uint;
    string _string1;
    string _string2;
    constructor() {
        uint randomInt = 0;
        _uint = randomInt;
    }
    function fallback() external payable{
        _string1 = "Hi" + msg.value.toString();
        emit Log(msg.sender, msg.sender);
    }
}
contract Auction is Example18 {
    address public fallbackAddress;
    uint256 public totalPrice = 1 finney;
    uint256 public priceIncreaseRate = 2 finney;
    uint256 public priceIncrease;
    uint256 public priceIncreaseUntil;
    uint256 public currentPrice;
    uint256 public auctionEndTime;
    uint256 public randomTime;
    uint256 public remainingBid;
    uint256 public lowBidPrice;
    uint256 public highBidPrice;
    bool public owner;
    uint32 public auctionId;
    uint32 public _contractId;
    uint64 public blockNumber;
    uint256 public _transferPeriod;
    uint256 public _delayPeriod;
    uint256 public _finalPrice;
    uint256 public currentBidAmount;
    uint256 public isBidderPaid;
    mapping (uint32=>uint256) public bidderAmount;
    mapping (string=>bool) public bidderApproved;
    mapping (uint256=>string) public bidderName;
    mapping (address=>bool) public isOwner;
    event Cancelled (uint256 _id);
    event Start (uint32 _id);
    event End (uint32 _id);
    event GetRandomTime(uint256 _randomTime);
    event EndOfAuction (uint256 _id);
    event Bid (uint256 _id);
    event GetPriceIncrease(uint256 _priceIncrease);
    event EndOfSecondBid(uint256 _id, uint256 _remainingBidAmount);
    event SetLowBidPrice(uint256 _lowBidPrice);
    event SetHighBidPrice(uint256 _highBidPrice);
    event SetPrice(uint256 _newPrice);
    event NewLowPrice(uint256 _lowPrice);
    event NewHighPrice(uint256 _highPrice);
    event SetTimeouts(uint256 _transferPeriod, uint256 _delayPeriod);
    event OwnershipTransferred(address _from, address _to);
    event TransferPeriodUpdated(uint256 _new
