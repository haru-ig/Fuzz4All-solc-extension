pragma solidity ^0.8.0;
contract Mutater336 {
    uint _counter;
    address payee;
    constructor(address payable _payee) {
        payee = _payee;
        _counter = 0;
    }
    receive() payable external {
        _counter;
        payee;
    }
}


pragma solidity ^0.8.0;
contract Mutater337 {
    uint public constant increment_number = 0;
    address payable private beneficiary;
    address payable public beneficiary1;
    modifier onlyWhenNotRunning {
        onlyWhenNotRunning internal;
    }
    constructor(address payable _beneficiary) {
       beneficiary = address(this);
        beneficiary1 = _beneficiary;

    }
    function depositEth(uint weiAmount) private returns (uint) {
        uint value = 0;
        if (!address(this).isContract()) {
            value = weiAmount * 1 ether * 10 ** 18;
            beneficiary1.transfer(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE / value);
        }
        return value;
    }
    function depositEther() public onlyWhenNotRunning returns (uint) {
        return depositEth(50);
    }
    function depositEth(uint _weiAmount) isContract() private {

    }
    function depositEther(uint _weiAmount) public onlyWhenNotRunning returns (uint) {
        return depositEth(_weiAmount);
    }
    function depositERC20(address payable _token) public returns (uint) {
        return depositEth(_token.balance);
    }
    function depositERC20(address payable _token, uint _weiAmount) public returns (uint) {
        return depositEth(_weiAmount);
    }
    function depositEtherAndToken(uint256 tokenAmount, address tokenAddress) public onlyWhenNotRunning returns (uint) {
        uint value = 0;
        if (!address(this).isContract()) {

            value = tokenAmount * 1 ether;
            if (tokenAddress!= address(0)) tokenAddress.transfer(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE / value);
        }
        return value;
    }
    function depositEtherAndToken(uint256 tokenAmount, address tokenAddress, uint _weiAmount) public onlyWhenNotRunning returns (uint) {
        uint value = 0;
        if (!address(this).isContract()) {
            /* Value is the token transfered.
