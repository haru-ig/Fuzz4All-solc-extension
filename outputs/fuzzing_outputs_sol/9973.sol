pragma solidity ^0.8.0;
contract Caller {
    address receiver;
    address payable fallback;
    uint[] storedData;

    constructor() {
        receiver = msg.sender;
    }
    function toggle() public {
        fallback.call{value: address(this).balance}("");
        storedData.length++;
    }
    function get() public view returns (uint) {
        if (storedData.length > 2){
            fallback.transfer(storedData[storedData.length - 3]);

            fallback.call{value: storedData[storedData.length - 1]}`);
        }
        return 8;
    }
}
