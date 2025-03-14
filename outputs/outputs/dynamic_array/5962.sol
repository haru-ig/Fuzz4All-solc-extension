pragma solidity ^0.8.0;
contract Test296032 {
    bytes[] internal dataArray;
}



pragma solidity 0.6.12;

contract Main {
    address constant owner = msg.sender;
    uint256 constant minBalance = 25 ether;

    event GaveFreeCoinsToPlayer(address player);

    function enterAndBuy(address _player, uint256 _amount)
        public
        payable
        returns (uint256)
    {
        uint256 balanceBefore = address(this).balance;

        _player.transfer(_amount);

        uint256 balanceAfter = address(this).balance;

        emit GaveFreeCoinsToPlayer(_player);
        return balanceAfter - balanceBefore;
    }

    fallback() external payable {
        require(address(this).balance >= minBalance, "Not enough Ether");
        enterAndBuy(msg.sender, msg.value);
    }
}
