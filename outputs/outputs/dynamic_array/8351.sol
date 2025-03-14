pragma solidity ^0.8.0;
contract Solidity0To7a {
    uint8 public a;
    uint8 public b;
    uint8 public s;
    uint8[] public array;
    mapping(uint256 => uint8) public bids;
    address public user;
    uint256 public startTime;
    uint256 public numBlocks;
    uint256 public totalBids;
    bool public override paused;
    bool public override pausedInit;
    uint256 public override pausedAt;
    mapping(address => uint8) public overrides;
    mapping(uint256 => uint256) public overridesStart;
    constructor() public {
        a = 6;
        b = 2;
        s = 4;
        array = new uint8[](3);
        uint256 now = uint256(block.timestamp);
        startTime = now;
        numBlocks = now - startTime;
        totalBids = 0;
        user = msg.sender;
        paused = false;
    }
    fallback() external payable {
        a = a + 1;
        b = b + 3;
        s = s + 4;
        array[0] = a;
        uint8 x = array[array.length - 1];
        array[array.length - 1] = b;
        uint8 y = array[0];
        setBid(0, 0);
        setBid(0, 1);
        setBid(0, 2);
        array[0] = x;
    }
    function getBid(uint256 index) public view returns(uint8) {
        return bids[index];
    }
    function setBid(uint256 index, uint8 bid) public view {
        bids[index] = bid;
        totalBids = totalBids + bid;
    }

    function overrideBid(uint256 _blockIndex, uint256 _bid) public {
        if (!block.timestamp > overridesStart[_blockIndex] || block.timestamp < overridesStart[_blockIndex + 1]) {
            require(indexOfBid(_bid)!= -1);
            setBid(indexOfBid(_bid), _bid);
            block.timestamp = overridesStart[_blockIndex + 1];
        }
    }

    function indexOfBid(uint8 _bid) public view returns
