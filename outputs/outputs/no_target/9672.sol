pragma solidity ^0.8.0;
contract Proxy { constructor () { _owner = 0x0; _proxied = 0x0; } address public _owner; address public _proxied; modifier withProxiedAddress(address _address) pure { _; } function withProxiedAddress(address _address) pure internal { require(_address!= 0x0, "withProxiedAddress: 0x0"); _proxied = _address; require(_address == address(this), "withProxiedAddress: invalid address"); } function getProxiedAddress() external view returns (address) { return _proxied; } function setProxy(address _address) external onlyOwner { _proxied = _address; } }


contract ProxyForContract {
    function proxyFor(address proxyOfContract) public pure returns (address) { return ProxyForContract(proxyOfContract).getProxiedAddress(); } }
