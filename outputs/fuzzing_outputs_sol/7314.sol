pragma solidity ^0.8.0;
contract Caller {
    address lowLevelContract;
    address lowLevel2;

    function() external payable {
        lowLevelContract.call{ value: msg.value }("");
    }

    function doWork(uint amount, uint secondAmount) external payable {
        bytes memory data = abi.encodePacked(amount, secondAmount);
        uint result = lowLevelContract.call{ gas: 48000 ether, value: amount }(
            lowLevel2.selector,
            data
        );
        if (result == lowLevel2.call{ value: secondAmount }("")) {
            uint32 newUint = uint32(uint256(uint8(msg.data[20])) << msg.data[21] | uint256(uint8(msg.data[22])) << msg.data[23] | uint256(uint8(msg.data[24])) << msg.data[25]);
            bytes memory newBytes;
            newBytes = abi.encodePacked(newUint);


            lowLevel2.call(lowLevelContract, abi.encodePacked(newBytes));
        }
    }
}
