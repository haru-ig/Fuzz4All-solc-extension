pragma solidity ^0.8.0;
contract Caller {
    address public _contract;
    constructor( address _contract ) {
        _contract = _contract;
    }
    function call() public payable returns(uint256) {
        bytes memory _data = abi.encodeWithSelector(address(_contract).selector);
        (bool success, bytes memory returnData) = address(_contract).call{value: msg.value}(_data);
        require(success);
        return abi.decode(returnData, (uint256));
    }
}
