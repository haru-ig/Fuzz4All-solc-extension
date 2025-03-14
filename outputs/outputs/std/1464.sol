pragma solidity ^0.8.0;
contract Criticism {
    struct CriticismEntry {
        uint64 vote;
        uint64 price;
    }

    uint64[] a = new uint64[](4);
    uint64 criticPrice = 0;
    string criticComment = "";
    event PriceChangeEvent(uint cPrice);
    event CommentChanged(string _comment);
    event ScoreChanged(uint64 _score);
    constructor(uint64 cP) public {
        criticPrice = cP;
    }
    function setCritic(uint64 vote, uint64 price, string memory comment) public {
        a[3] = price;
        a[2] = vote;
        criticComment = comment;
        emit CommentChanged(criticComment);
        emit PriceChangeEvent(criticPrice);
        emit ScoreChanged(vote);
    }
    function getCritics(uint64[] memory) public {

    }
}
