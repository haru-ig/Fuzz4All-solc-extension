pragma solidity ^0.8.0;
interface IOwner {
    function setOwner(address owner) external;
    function owner() external view returns(address);
}



contract Factory{


    struct ContractData{
        address owner;
    }

    mapping(bytes32 => bytes32) public contractAddressMapping;

    uint256 internal nextContractID;
    uint256 internal nextABIID;
    IFactory constant _instance = IFactory(0x79F9825F38097C6DCEB1170726A048E42A45BB9D);

    mapping(address => ContractData) contractData;



    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


    ContractData createContract(address owner) public returns (address){
        bytes32 contractAddress;
        bytes32 abiAddress;


        assembly{
            contractAddress := mload(0x40)
            contractData{contractAddress}.owner := owner
        }


        if (contractAddressMapping[contractAddress] == address(0x0)){
            contractAddressMapping[contractAddress] := abiAddress;
        }

        bytes32 contractABI = contractAddressMapping[contractAddress];


        address c;
        assembly{

            contractABI := mload(add(abiAddress,add(1,mul(abi(contractABI),65))))
            c := create2(abi_encode(contractABI),add(abi(contractABI),65),contractAddress))
        }


        ContractData memory contractData;
        contractData.owner = owner;


        nextContractID ++;
        contractAddressMapping = add(abiAddress,add(1,65))
        contractAddressMapping = add(abiAddress,add(1,65));
        contractData.contractAddress = c;
        contractDataMapping[nextContractID] = contractData;


        nextABIID ++;
        contractAddressMapping = add(abiAddress,add(1,65))
        contractAddressMapping = add(abiAddress,65);
        contractAddressMapping = add(abiAddress,65);
        contractABI = add(abiAddress,mul(abi(contractABI),65));
        abiAddress = add(abiAddress,mul(abi(abiAddress),65));
        contractAddressMapping = add(abiAddress,
