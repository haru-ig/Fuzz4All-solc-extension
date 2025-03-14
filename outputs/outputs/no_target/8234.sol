pragma solidity ^0.8.0;
contract Mutated1b is Mutated1a {
    address public contractAddress;
    address public payable beneficiary;
    uint256 public tokenUnits;
}

pragma solidity ^0.8.0;
contract Mutated2a
{
    address public contractAddress;
    mapping(address => uint256) public tokens;
}

pragma solidity ^0.8.0;
contract Mutated2b is Mutated2a {

    uint256 constant tokenUnit = 0;
    address public beneficiary;

    uint constant tokenValue = tokenUnit;
    uint constant payByTokenAddress = tokenValue / 2;
    uint constant payByEtherAddress = tokenValue / 4;
    uint constant payByToken = tokenValue * 2;


    address public payable contractAddress;





    constructor(address contractAddress) public
    {
        contractAddress_ = contractAddress;
        contractAddress_ = payable(contractAddress_);
        beneficiary = msg.sender;
    }






    constructor(address contractAddress,
        uint256 payedAmount,
        address payable beneficiary) internal
    {
        contractAddress_ = contractAddress;
        tokens[msg.sender] = payedAmount;
        contractAddress_ = payable(contractAddress);
        this.beneficiary = beneficiary;
    }










    modifier onlyBeneficiary()
    {
        if (msg.sender == beneficiary) {
            _;
        }
    }





    function _mutatedAddress_() internal pure returns (address) {
        return address(this);
    }
