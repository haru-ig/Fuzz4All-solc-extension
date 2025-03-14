pragma solidity ^0.8.0;
interface IChainlink {
    struct Request {
        bytes4 funcSig;
        uint256 nonce;
        uint256 expiry;
        address returnData;
        uint8 v;
        bytes32 r;
        bytes32 s;
        bytes4 magicValue;
    }
    function request(Request calldata request) external returns (uint);
}
interface IChainlinkAdmin {
    function setProxy(address proxy) external returns (uint);
}
interface IChainlinkOracle {
    function fetchRequest(bytes memory _requestId) external view returns (IChainlink.Request memory);
}
contract ChainlinkAdmin is IChainlinkAdmin {
    address public admin;
    function link() external {
        return;
    }
    function setProxy(address _proxy) external override returns (uint) {
        admin = _proxy;
        return 0;
    }
}
contract TestApp is ChainlinkAdmin {
  function test(address _to, uint _amount) external override returns (uint) {
    require(admin!= address(0x00), "Can't be 0x00");
    LinkToken receiver = new LinkToken();

    (bool sent, ) = address(receiver).call{value: _amount}(abi.encode("\x19\x01", _to, _amount));
    require(sent, "Failed to send LINK to receiver");
    return 0;
  }
}


contract DeploymentTest is ChainlinkAdmin {



    address public TestApp;

    address public ProxyContract = 0x1109eA4e8A851A0c587385F5f951b6444Cdf0390;

    modifier onlyAdmin() {
        require(msg.sender == admin, 'TestApp: invalid sender');
        _;
    }

    function createToken() public onlyAdmin {
        Test
