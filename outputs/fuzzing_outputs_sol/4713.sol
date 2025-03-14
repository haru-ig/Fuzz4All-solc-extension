pragma solidity ^0.8.0;
contract MutatedCaller is Caller {

    function callWithoutFallbackReceive(address target, bytes memory data)
        public
        returns (
            bool success,
            bytes memory dataOut
    ) {
        if (!callAndFailWithoutFallbackReceive(data)) {
            return (false, data);
        }
        return (true, data);
    }


    receive() external payable {}


    function callAndFailWithoutFallbackReceive(bytes calldata data)
        public
        returns (bool)
    {
        if (Caller(msg.sender).canCall(target, data)) {
            target.call{value: msg.value}(data);
        } else {
            return false;
        }
        return true;
    }
}
