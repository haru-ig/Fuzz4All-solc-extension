pragma solidity ^0.8.0;
contract Immutable_0025 {
    mapping(address => uint256) public immutable a;
    constructor() public {}
    function get() public view returns (uint256) {
        return a[this];
    }
}
contract Auction_0026 {
    address auction_manager;
    contract Payable_0027 {
        uint constant fee = 10 ether;
        address payable to_;
        uint8 _price;
        uint8 _rate;
        address _bidder;

        constructor(uint8 _price, uint8 _rate, address payable _to) public {
            to_ = _to;
            _price = _price;
            _rate = _rate;
        }
        function bid() public payable returns (uint256) {
                require(bidderIsOwner(), "Not owner");
                require(to_ && msg.value >= msg.value / 10, "Bad");
                (uint8 _s, uint8 _b) = sellPrice();
                _bidder.transfer(to_.balance > msg.value * _b * _s / 100? to_.balance * _b : msg.value);
                return msg.value.sub(to_.balance * _b);
        }
        function getBidder() public view returns (address) {
            return _bidder;
        }

        function price() public view returns (uint256) {
            return _price;
        }

        function rates(uint8 _r) public view returns (uint8) {
            return _r;
        }

        function updatePrice(uint _pr) public {
            _price = _pr;
            emit PriceUpdated(_pr);
        }

        function setBidder(address payable _newBidder) public {
            require(_bidder!= address(0), "0");
            _bidder.transfer(_bidder.balance);
            _bidder = _newBidder;
        }

        function setAuctionManager(address payable _newAuctionManager) public {
            require(_auctionManager == address(0), "0");
            require(msg.sender == auction_manager || msg.sender == _auctionManager, "Bad");
            _auctionManager = _newAuctionManager;
        }

        modifier onlyAuctionManager() {
            require(msg.sender == auction_manager, "Only manager");
            _;
        }

        bool bidder
