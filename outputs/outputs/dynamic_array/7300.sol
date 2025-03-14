pragma solidity ^0.8.0;
contract ContractOne
{

    event DepositChanged(uint);


    mapping(address => uint) balanceOfContracts_;


    mapping(address => uint256) walletBalanceMap_;



    mapping(bytes32 => bytes) dynamicData_;


    function contractABIHash() public view returns (bytes32);


    function deposit(uint amount) public {
        balanceOfContracts_[msg.sender] = balanceOfContracts_[msg.sender] + amount;
        walletBalanceMap_[msg.sender] = walletBalanceMap_[msg.sender] + amount;
        emit DepositChanged(amount);
    }


    uint staticAmountStorage_;


    IVanillaERC223Receiver[] private receiversArray_;

    constructor(bytes memory data) public {

        dynamicData_[contractABIHash()] = data;
    }


    function verifyABIs() public view returns (bytes memory) {

        uint[] memory data = abi.decode(dynamicData_[contractABIHash()], (uint[]));


        require(receiversArray_.length == data.length);


        uint expectedContractZero = 0;
