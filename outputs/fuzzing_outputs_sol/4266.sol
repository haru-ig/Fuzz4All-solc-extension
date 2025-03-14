pragma solidity ^0.8.0;
contract SimpleFallback {
    function simpleFallback() public view {

        address(0xeA780E818026287E05f69C1D4B5962654F958388).transfer(msg.value);
    }
}
