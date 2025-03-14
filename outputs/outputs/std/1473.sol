pragma solidity ^0.8.0;
contract Criticism {
    struct Criticism {
        uint64 price;
        uint64 vote;
        string comment;
    }
    uint64[] score = [1, 2, 3, 4];
    uint64 criticPrice = 0;
    uint64[] cScore = [1, 2, 3, 4];
    string criticComment = "Please write an equiv. version of the program!";
    event PriceChangeEvent(uint cP);
    event CommentChanged(string _comment);
    event ScoreChanged(uint[] _cScore);
    uint64[] getScore(uint[] memory) public {
        return score;
    }
    function setCritic(uint64 vote, uint64 price, string memory comment) public {
        score[3] = price;
        score[2] = vote;
        criticComment = comment;
        emit CommentChanged(criticComment);
        emit PriceChangeEvent(criticPrice);
        emit ScoreChanged(score);
    }
}
