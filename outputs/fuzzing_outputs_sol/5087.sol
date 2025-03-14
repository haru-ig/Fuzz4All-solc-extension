pragma solidity ^0.8.0;
contract FallbackCall {
    receive() external payable {}
}




    function sendEther(
        address payable contractAddress,
        uint64 amount
    ) external payable {

    }



    function testFallbackCallReceivesEther() external {
        fallbackCall();
    }


    function fallbackCall() external {
        sendEther(address(new Caller()), 1);
    }
