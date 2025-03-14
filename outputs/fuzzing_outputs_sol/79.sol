pragma solidity ^0.8.0;
contract Caller {
    uint8 data;
    function setData(uint256 y) public { data = y; }
    uint256 value;
    function getData(uint256 k) public view returns (uint8 y)
    { y = data; }
    function setData2(uint256 w) public { value = w; }
    receive() external payable { data = 3; }
    fallback() external payable { data = 2; }
    modifier WithFallbackFunction { require(msg.data.length > 0, 'Length is empty'); }
}
