pragma solidity ^0.8.0;
























pragma solidity ^0.8.0;
contract Caller {


    function send() public pure returns (uint) {
        (uint a, uint b) = sendData();
        return a + b;
    }

    function sendData() public pure returns (uint, uint) {
        uint a = 1;
        return (a + 2, a / 4);
    }




}
