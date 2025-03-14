pragma solidity ^0.8.0;
contract Mover {
    uint16 constant MINIMUM_HEIGHT = 5000000001;
    uint32 private constant INITIAL_BLOCK_NUMBER = 2**160;
    uint16 private constant CURRENT_BLOCK_NUMBER = uint16(block.number);
    bytes32 private constant EMPTY_HASH = keccak256(abi.encode(blockhash(0)));
    bytes32 private constant MIGRATE_TX_HASH = keccak256("MIGRATE");
    bytes32 private constant MIGRATE_TX_HASH_EIP1559 = keccak256("MIGRATE_EIP1559");
    bytes32 private constant MIGRATE_TX_HASH_ETHEREUM  = keccak256("MIGRATE_ETHEREUM");
    uint256 private constant INITIAL_BALANCE = 0;
    uint256 private constant ETHER_GAS_LIMIT = 10*1000*1000*1000;
    uint256 private ETHER_GAS_LIMIT_ETHEREUM = 50*1000*1000*1000;
    uint256 private ETHER_GAS_LIMIT_ETHEREUM1559 = 26300*1000*1000;
    address private WALLET;
    address private BALANCE_MINTER;
    address private RECEIVER;
    uint32 private CURRENT_STAKING_BLOCK_NUMBER;

    constructor (address _wallet, address _balanceMinter) {
        WALLET = _wallet;
        BALANCE_MINTER = _balanceMinter;
    }





    function sendEtherToContract(address receiver, uint gasLimit, uint gasPrice) public payable {
        receiveEth();
        receiver.call{
            gas: gasLimit
        }("");
    }



    function receiveEth() public payable {
        _validateCaller();
        _processReceivedEther();
    }



    function receiveEther() external payable {
        receiveEth();
    }



     function sendEtherToContractWithEtherReceiver(address receiver, uint gasLimit, uint gasPrice) public payable {
        receiveEth();
        receiver.call{
            gas:
