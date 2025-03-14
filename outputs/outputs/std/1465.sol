pragma solidity ^0.8.0;
contract Criticism {
    struct CriticismEntry {
        uint32 vote;
        uint64 price;
        string comment;
    }
    uint32[] a = new uint32[](4);
    uint64 criticPrice = 0;
    string criticComment = "";
    uint32[] memory critics;
    event PriceChangeEvent(uint cPrice);
    event CommentChanged(string _comment);
    event ScoreChanged(uint64 _score);
    constructor(uint64 cP) public {
        criticPrice = cP;
    }
    function setCritic(uint32 vote, uint64 price, uint32[] memory critics_) public {
        a[3] = price;
        a[2] = vote;
        critics = critics_;
        emit CommentChanged(criticComment);
        emit PriceChangeEvent(criticPrice);
        emit ScoreChanged(vote);
    }
    function getCritics(uint32[] memory) public {
        for (uint32 i = 0; i < critics.length; i ++)
            assert(critics[i] >= 0 && critics[i] < a.length);
    }
}
