pragma solidity ^0.8.0;
interface ISpeedLimiterBasic {
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event TransferFrom(address indexed _from, address indexed _to, uint256 _value);

}
contract ContractWithTimeLimits{

   function gasLimit() public pure returns (uint256);


   function gasPrice() public pure returns (uint256);


   function deposit(uint256 _amount) public;

}
contract ContractWithAccountLimits{

    address public owner;
    address public initialTokenContractAddress;


    ISpeedLimiterBasic public accountLimitsContract;


    uint contractTimeLimit = 30;


    uint depositTimeLimit = 10 minutes;

    constructor() private
    {

        owner = msg.sender;

        if (msg.value > (contractTimeLimit + depositTimeLimit)) {

            msg.sender.transfer(msg.value - (contractTimeLimit + depositTimeLimit));
        }
    }
 void depositToken() private
    {
        IERC20 tokenContract = IERC20(initialTokenContractAddress);
        uint accountTokenBalance = tokenContract.balanceOf(address(this));


      require(contractTimeLimit < block.timestamp, "Contract has reached its time limit");
      tokenContract.mint(address(this));
    }


    function contractWillUpgrade(address _newContractAddress) public {
      IERC20 tokenContract = IERC20(initialTokenContractAddress);
      tokenContract.mint(address(this));
      tokenContract.transfer
