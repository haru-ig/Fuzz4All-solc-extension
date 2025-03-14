pragma solidity ^0.8.0;

import "./MyContract.sol";
contract MyContract {
    bytes32 constant WAVES = 0xaf9768f2b765bfbb2daba62c967a6900d252799447955e294098e35984a4df0e;


    bytes32 constant ETHER = 0x000000000000000000000000000000000000000000000000000000000000;



    bytes32 public contractAddress;
    uint32 public chainId;
	address public contractAddressToCall;


    constructor() { chainId = 1;contractAddress = 42; }


    modifier onlyChainA() {
		require(chainId == 1);
		_;
    }


    function sendEtherFromChainA() public onlyChainA returns (uint)
