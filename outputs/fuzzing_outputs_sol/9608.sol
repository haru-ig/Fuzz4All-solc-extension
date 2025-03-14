pragma solidity ^0.8.0;
contract EtherFallback1 {
    uint256 myStaticVar;

    function test1() public returns (uint256) {
        return 1;
    }
    function test2() public returns (uint256) {
        uint256 dataLength = msg.data.length;
        if (dataLength >= 15) {
            return 1;
        }
        uint256 x;
        assembly {
            x := mload(add(message, 30))
        }
        return x;
    }
}


pragma solidity ^0.8.0;
contract EtherFallback2 {

    address originalAddress = msg.sender;

    constructor () {}


    function test2() public returns (uint256) {
        msg.sender.transfer(50);
        return 2;
    }


    function test3() public returns (uint256) {
        return originalAddress.call(abi.encodeWithSelector(address(0).transfer.selector, 50));
    }
}
