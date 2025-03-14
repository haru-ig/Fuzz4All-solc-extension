pragma solidity ^0.8.0;
pragma experimental "ABIEncoderV2";
contract Criticism {
    using Address for address payable;
    using SafeMath for uint256;
    struct CriticismEntry {
        uint64 vote;
        uint64 price;
    }
    address payable[] a;
    uint64 criticPrice;
    string criticComment;
    event PriceChangeEvent(uint cPrice);
    event CommentChanged(string _comment);
    event ScoreChanged(uint64 _score);
    constructor(uint64 cP) public {
        criticPrice = cP;
    }
    function setCritic(address payable voter, uint64 price, string memory comment) public {
        a.push(voter);
        a.push(price);
        a.push(comment);
    }
    function getCritics(uint64[] memory) public {
    }
    function score() public pure returns (uint64) {
        return a.data();
    }
}
