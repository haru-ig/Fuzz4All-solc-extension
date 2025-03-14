pragma solidity ^0.8.0;
contract A { fallback(function() external { require(true)}, function() external payable { require(msg.value == 0.2 ether); }); payable fallback() { require(true); }}

pragma solidity ^0.8.0;
contract Caller
{
        function call1Fallback() public payable { payable(bytes32(a)).fallback(); }
        function call2Fallback() public payable receive(uint64  _data, uint64 x) { payable(bytes32(a)).fallback(_data, x); }
        function call3Fallback() public payable { payable(bytes32(a)).fallback(x); }
        function call4Fallback() public payable override { payable(bytes32(a)).fallback(x, bytes32(a)); }
        function call5Fallback() public payable pure override { payable(bytes32(a)).fallback(x, address(address(this)), name(), data(), gasprice()); }
        function call6Fallback() public payable { address(bytes32(a)).fallback(); }

        function a() public pure virtual returns (uint8){
        }
}
