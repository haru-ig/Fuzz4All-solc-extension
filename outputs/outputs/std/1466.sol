pragma solidity ^0.8.0;
contract Criticism {
    struct Criticism {
        uint64 vote;
        uint64 price;
        string comment;
    }
    uint64 criticPrice = 0;
    string criticComment = "";
    emit PriceChangeEvent(criticPrice);
    emit CommentChanged(criticComment);
    uint64[] a = new uint64[](4);
    uint64 criticScore = 0;
    event PriceChangeEvent(uint cPrice);
    event CommentChanged(string _comment);
    event CriticScoreChanged(uint64 _score);
    constructor(uint64 cP) public {
        criticPrice = cP;
    }
    function setComment( uint64 vote, uint64 price, string memory comment) public {
        a[3] = price;
        a[2] = vote;
        criticComment = comment;
        emit CommentChanged(criticComment);
        emit PriceChangeEvent(criticPrice);
        emit CriticScoreChanged(vote);
    }
    function setCritic(uint64 vote, uint64 price, string memory comment) public {
        a[3] = price;
        a[2] = vote;
        criticComment = comment;
        emit CommentChanged(criticComment);
        emit PriceChangeEvent(criticPrice);
        emit CriticScoreChanged(vote);
    }
    function getCritics(uint64[] memory) public {
    }
}
