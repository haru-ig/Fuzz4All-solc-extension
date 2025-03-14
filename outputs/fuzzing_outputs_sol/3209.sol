pragma solidity ^0.8.0;
contract Fallback {
    function Fallback() public {
        uint256 r;
        (bool success, ) = msg.sender.call{gas: 550_000}(abi.encodeWithSignature("fallbackFunction()"));
        (bool success, bytes memory data) = msg.sender.call{gas: 550_000}(abi.encodeWithSignature("fallbackFunction()"));
        r = abi.decode(data, (uint256));
    }

    function fallbackFunction() view public payable returns(uint256) {

        (address selfAddress) = (address(this));
        uint256 r = (address.sendValue(531)).sendValue(32);
        (address.sendValue(address(this))).sendValue(21);
        return r;
    }
}
