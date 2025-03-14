pragma solidity ^0.8.0;
contract Criticism {
    event PriceChangeEvent(uint cPrice);
    event CommentChanged(string _comment);
    event ScoreChanged(uint64 _score);
    struct CriticismEntry {
        string criticComment;
        uint64 criticPrice;
        uint64 criticScore;
        uint64 vote;
    }
    mapping(uint64 => CriticismEntry) criticismInfo;

    function getCritics(uint64[] memory) public {

        uint64 criticsCount = criticismInfo.length;
        uint64 criticsList[(criticsCount + 1) * 2 - 1] = 0;
        uint64 criticsListEnd = (criticsCount + 1) * 2;
        for (uint64 i = 0; i < criticsCount; i++) {
            criticsList[(i * 2) + 1] = criticismInfo[i].criticScore;
        }
        for (uint64 i = 0; i < criticsCount; i++) {
            if (criticsList[i * 2 + 1] > 0) {
                criticsList[i * 2] = criticsList[(i * 2) + 1];
            } else {
                criticsList += i * 2;
            }
        }
        for (uint64 i = criticsCount * 2 - 1; i >= 0; i--) {
            criticismInfo[criticsList[i]].criticScore = i;
            criticsList[i] = 0;
        }

        for (uint64 i = 0; i < criticsCount; i++) {
            uint64 criticScore = criticismInfo[criticsList[i]].criticScore + 1;
            uint64 criticVote = criticismInfo[criticsList[i]].vote;
            uint64 criticPrice = criticismInfo[criticsList[i]].criticPrice;
            criticismInfo
