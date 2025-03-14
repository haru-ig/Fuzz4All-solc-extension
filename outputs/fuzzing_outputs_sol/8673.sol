pragma solidity ^0.8.0;
contract Constr
{
    address payable beneficiary;
    uint256 amount;
    string myString;
    mapping (address => uint16) public accountHistory;
    mapping (address => uint256) public balanceOf;

    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function transferERC20(address _to, uint256 _amount, address _tokenContract) public {
        require(myString!= "", "myString must not be empty");

        require(balanceOf[_tokenContract] >= _amount, "contract doesn't hold enough");
        balanceOf[_tokenContract] -= _amount;
        balance[_to] += _amount;
    }
    function transfer(address _to, uint _value) public {
        require(msg.sender()!= _to, "Invalid transfer address");
        require(amount >= _value, "Invalid transfer amount");
        balance[msg.sender] -= _value;
        balance[_to] += _value;
    }
    function transferFrom(address _to,uint256 _value,uint256 _value2,address _token) public {
        require(msg.sender() == _to || msg.sender() == _token || msg.sender() == _token2,"Invalid transfer address");
        require(amount >= _value, "Invalid transfer amount");
        address tokenHoldingCoin = balanceOf[_token];
        balance[_token] -= _value;
        balance[_to] += _value;
        balance[msg.sender] += tokens;
    }
    function createNewToken(address _to,uint _amount) public returns (uint256) {
        if (tokenBalance >= _amount) {
            beneficiary.transfer(_amount);
            myString = "myString_" + (counter++);
            accountHistory[_to] += 1;
            tokenBalance -= _amount;
            return _amount;
        } else {
            return 0;
        }
    }
    function depositEther(){
        require(msg.sender == beneficiary, "Invalid beneficiary address!");
    }
    function withdrawEther(){
        beneficiary.transfer(address(this).balance);
    }
    function writeBalance(){
        console.log(msg.sender);
        if (accountHistory[msg.sender] > 0) {
            accountHistory[msg.sender]-= 1;
            balanceOf[myString] *= 10;
            balanceOf[myString] += 1;
        }
    }
    function createAccountHistory(){
        for (uint i = 0; i < accounts.length; i++) {
            accountHistory[accounts[i]] += 1;
        }
