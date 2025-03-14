pragma solidity ^0.8.0;
contract MultiMutation{
    function generateMultiple(uint num1, uint num2) public pure returns(uint sum){
        sum = num1 * ( uint( increment ) + num1 * ( uint( increment ) + num2 ) );
        return sum;
    }
}
pragma solidity >=0.4.21  <0.9.0;
contract SafeMath {
    function safeadd(uint x, uint y) internal pure returns (uint z) {
        require((z = x + y) >= x, "SafeMath: addition overflow");
    }



    function safemul(uint x, uint y) internal pure returns (uint z) {



        if (x == 0) {
            return 0;
        }

        require((z = x * y) / x == y, "SafeMath: multiplication overflow");
    }

    function safesub(uint x, uint y) internal pure returns (uint z) {
        require((z = x - y) <= x, "SafeMath: subtraction overflow");
    }

    uint constant internal MIN_VALUE = 0;
}



pragma solidity ^0.8.0;
contract Safe{
    address public owner;
    struct Transaction{
        uint256 nonce;
        bytes32 result;
        mapping(address=>address) participants;
    }
    mapping(address=>Transaction) public transactions;
    bytes32 constant internal VERSION = keccak256("4 7");
    bool public open = false;

    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Safe: only owner");
        _;
    }
    modifier onlyOpen(){
        require(open == true, "Must open contract for transactions");
        _;
    }
    modifier isValid{
        require(validTransaction(msg.sender), "Invalid transaction attempt");
        _;
    }
    function validTransaction(address sender) public view returns(bool){

        require(
            transactions[sender].nonce == 1, "must have nonce 1"
        );

        if (transactions[sender].participants[sender] == address(0)){
            return true;
        }
