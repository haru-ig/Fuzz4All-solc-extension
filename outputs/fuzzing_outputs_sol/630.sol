pragma solidity ^0.8.0;
contract FallbackTest2
{
    constructor()
    {}
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract FallbackTest3
{
    address payable internal myContract;

    constructor()
    {
        myContract = msg.sender;
    }

    fallback() public payable
    {
    }

    function test() public pure
    {
        if(msg.value > 0) {
            myContract.transfer(1);
        }
    }
}
