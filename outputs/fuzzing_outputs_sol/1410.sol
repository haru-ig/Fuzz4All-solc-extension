pragma solidity ^0.8.0;
contract MutatedFallbackExample{
    function fallback(bytes4 _funcSignature) public {
        uint256 _data;
        assembly {

            _data := calldata(0)
        }
    }
}
