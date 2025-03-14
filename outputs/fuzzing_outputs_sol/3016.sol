pragma solidity ^0.8.0;
contract Caller {

    function call(bytes calldata callData)
        public
        payable
        returns (address payable, bytes memory data, bytes memory result)
    {
        data = callData;
        (to, returnedData, result) = _handleMethodCallWithCheck(data);
        require(to == msg.sender, "Caller#call#transfer");
        return (to, returnedData, result);
    }
    function _handleMethodCallWithCheck(bytes memory callData)
        private
        view
        returns (address payable to, bytes memory returnedData, bytes memory result)
    {

    }
}
