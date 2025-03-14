pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunction2 {
    uint256 data;
    function setData(uint y) public { data = [y, x, x + y]; }
    uint256 x;
    function getData(uint k) public view returns (uint z)
    { z = data[k]; }
    address payable contractAddress;
    function setContractAddress(address payable c) public { contractAddress = c; }
    fallback() external payable { x = 1; }
}


pragma solidity ^0.8.0;
contract MyCallsFallbackFunction {

    function fallback() external payable { }

    function () external payable { }
}


pragma solidity ^0.8.0;
contract MyCallsFallbackFunction2 {
    receive() external payable { }
    function () external payable { }
}
