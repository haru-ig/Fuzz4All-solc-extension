pragma solidity ^0.8.0;
interface Proxy {
    function setUnderlying(address _underlying, uint256 _value) external;
}




pragma solidity ^0.6.11;

interface IUniswapV2Factory {
    function getDeployedFactory() external view returns (address);
    function getImplementation(address) external view returns (address);
    function allImplementations(uint256) external view returns (address);
    function allAddresses() external view returns (address[]);
    function deploy(address, bytes memory) external returns (address);
    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}





contract Assert {


    assert onlyOwner internal;

    constructor() internal {

        _setOwner(_msgSender());
    }

    modifier onlyOwner(address _account) {
        require(msg.sender == _account, "Only the owner can call this method");
        _;
    }


    assert(boolean cond, string memory message);
}



contract Ownable is Assert {

    address internal[50] internal owners;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


    constructor() ownerOnly() internal {
        address[] memory _owners = new address[](50);
        for (uint i = 0; i < 50; i++) {
            _owners[i] = address(0);
        }
       Owners = _owners;
    }

    function _setOwner(address _newOwner) internal onlyOwner(_
