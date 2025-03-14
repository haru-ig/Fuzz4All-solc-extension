pragma solidity ^0.8.0;
contract Criticism {
    struct CriticismEntry {
        uint64 vote;
        uint64 price;
    }
    uint64[] a = new uint64[](4);
    uint64 criticPrice;
    string criticComment;
    uint64[] vote;
    uint64[] score;
    string[] comments;
    event PriceChangeEvent(uint cPrice);
    event CommentChanged(string _comment);
    event CommentAdded(uint critId);
    event NewCriticAdded(uint cId, string critName, string critComment);
    event ScoreChanged(uint64 critScoreChange);
    constructor() public {
    }
    function addCritic(uint64 vote, uint64 price) public {
        criticComment = "";
        criticPrice = price;
        comments.push(criticComment);
        vote.push(vote);
        score.push(vote);
        comments.push(criticComment);
        emit CommentChanged(criticComment);
        emit CommentAdded(9);
        emit PriceChangeEvent(criticPrice);
        emit NewCriticAdded(9, "Holmes", "This is a cute soul");
    }
    function getCritics(uint64[] memory critVoteAndScore, uint64[] memory comment) public {
        for (uint i = 0; i < critVoteAndScore.length; i++) {
            emit PriceChangeEvent(criticPrice);
        }
        emit CommentChanged(criticComment);
    }
}
