pragma solidity ^0.8.0;
contract Caller {
    address immutable contractAddrees[2] = [address(800000 + 1), address(800000 + 2)];
    function valueFallback() public pure returns (bool success) {

        (success, ) = contractAddrees[0].call{value: msg.value}("");

        (success, ) = contractAddrees[1].call(0, "");

        (success, ) = contractAddrees[2].value(msg.value)("");

        (success, ) = contractAddrees[2].payable();

        (success, ) = contractAddrees[2].call{value: 2 * msg.value, gas: 50000}("this is a call");

        (success, ) = contractAddrees[2].call.value(2 * msg.value)(0, "");
        return success;
    }
}
