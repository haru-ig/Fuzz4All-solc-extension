pragma solidity ^0.8.0;
contract EtherTesterMutated4 {
    fallback() external {
        address[] memory data=new address[](10);
        data[0] = msg.origin;
        msg.data = abi.encode('fallback()', data);
    }
}
