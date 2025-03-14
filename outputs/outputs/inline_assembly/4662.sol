pragma solidity ^0.8.0;
contract mutator83
{
    mapping (address => uint) public coins;
    uint maxCoins = 10;
    constructor() {
        coins[0xd4E3E8cb06f03Eec5a7e06c043004c1859F18aC2] = 100;
        coins[0xf522B06f177884835Ad558684944031263366184] = 400;
        coins[0x76A7F032f25562C06A0567E4F8F8A70b380D74f5] = 0;
        coins["0x926458802c9087b0fF755707372758B50f159710"] = 0;
        assert(coins.length <= maxCoins);
    }

    receive() external payable {}

    function burnedCoins(address user) external view returns(uint) {
        return coins[user];
    }

    function withdrawAll(address user) public {
        uint c = coins[user];
        require(user!= address(0));
        require(c!= 0 && c <= maxCoins);

    	coins[user] = 0;
    	(bool sent,) = user.call{value: c}("");
    	require(sent);
    }
}
