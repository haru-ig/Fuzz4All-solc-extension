pragma solidity ^0.8.0;
contract SimpleFallbackCaller {
    function Mutator() public {
        fallbackToCaller();
    }

    receive() external payable {
        fallbackToCaller();
    }

    function fallbackToCaller() public pure {

        this.call{value: address(this).balance}("");
    }
}
