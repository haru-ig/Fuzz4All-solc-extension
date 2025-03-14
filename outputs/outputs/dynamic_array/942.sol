pragma solidity ^0.8.0;
contract PrizeDistributor1
{
    uint prize = 5;
    uint prizeMultiplier = 32;
    uint winningMultiplier = 32;

    modifier prizeDistribution
    {
        uint winningPrizeCount = (1 << winningMultiplier) * prize + 0.5*prizeMultiplier;
        lotteries[_msgSender()] += (winningPrizeCount < 0)
                                     ? (1 << winningMultiplier)
                                       : winningPrizeCount;
        prize *= prizeMultiplier;
        prizeMultiplier *= 2;
        prizeDistribution;
    }

    function distributePrize() public prizeDistribution
    {
        prize += prizeMultiplier;
        prizeMultiplier /= 2;
    }
}
