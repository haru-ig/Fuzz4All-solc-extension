pragma solidity ^0.8.0;
<fim_middle>contract Caller{
    mapping (uint8 => uint256) _returnData;
    function doCalc(uint256 a, uint256 b) public pure returns (uint256) {
        _returnData[1] = add(a, b);
        _returnData[0] = a;
        return _returnData[0];
    }
    receive() external payable {
        revert("Caller does not handle this kind of transfer");
    }
    fallback () external payable {
        uint256 data = doCalc(1000, 200);
        require(data == 300);
        _returnData[0] = data;
        emit FallbackCalled(_returnData);
    }
}
