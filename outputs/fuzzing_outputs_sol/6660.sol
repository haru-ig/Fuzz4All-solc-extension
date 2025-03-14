pragma solidity ^0.8.0;
contract HasFallback {
    struct Foo {
        uint bar;
    }
    bytes32 internal contractName;
    mapping(address => bytes32) internal contractAddressesToName;
    mapping(bytes32 => address) internal nameToContractAddresses;
    constructor(bytes32 _name_) {
        contractName = _name_;
        nameToContractAddresses[_name_] = address(0x0);
    }
    function callWithAddress() public pure returns (address) {
        return msg.sender;
    }
    function callWithAddressFallback()
        public
        pure
        returns (address)
    {
        _;
    }
    function callWithName() public pure returns (address) {
        return contractAddressesToName[contractName];
    }
    function callWithNameContractName() public pure returns (address) {
        return nameToContractAddresses[contractName];
    }
    function callWithAddressName(address _address)
        public
        pure
        returns (address)
    {
        require(
            nameToContractAddresses[contractName] == address(0x0),
            "caller is already in the contract"
        );
        address newAddress = _address;
        nameToContractAddresses[_address] = contractName;
        contractAddressesToName[contractName] = _address;
        return _address;
    }
    function callWithDefaultFallback() public pure {
        (bool success, ) = caller.call.value(address(1 ether)()) {
            require(success);
        }
    }
    function callWithDefaultFallbackRevert()
        public
        pure
        returns (address)
    {
        callWithDefaultFallback();
        revert();
    }
    function callWithAddressDefaultFallback()
        public
        pure
        returns (address)
    {
        (bool success, ) = caller.call() {
            require(success);
        }
    }
    function callWithAddressDefaultFallbackRevert()
        public
        pure
        returns (address)
    {
        callWithAddressDefaultFallback();
        revert();
    }
    function callWithAddressRevert(address _address)
        public
        pure
        returns (address)
    {
        _;
        revert();
    }
}
