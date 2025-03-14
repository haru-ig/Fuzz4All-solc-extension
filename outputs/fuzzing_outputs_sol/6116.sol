pragma solidity ^0.8.0;
contract B is B {

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call");
        _;
    }
    function adminAddress() external view returns (address) {
        address r = B.admin;
        return r;
    }
}
contract Test is B, Test {
    constructor() public {
        require(block.timestamp > block.number, "Time not too far in the future");
    }
}
contract Caller {
    address public _myContract;
    address public _otherContract;

    function Caller(address _myContract_) public {
        _myContract = _myContract_;
        _otherContract = new Test();
    }

    function myContract() public view returns(address) {
        address r = address(this);
        return r;
    }

    function otherContract() public view returns(address) {
        address r = address(_otherContract);
        return r;
    }

    function transferEther(address _to, uint256 _amount) public {
        require(msg.value >= _amount, "Ether must be greater than the amount to transfer");
        (bool success, ) = _to.call{value:_amount}("");
        require(success);
    }

    function transferEtherToContract(address _to, uint256 _amount) public onlyAdmin external returns (uint256) {
        (bool success, uint256 gasUsed) = _to.call.value(_amount)("");
        uint256 balance = address(_myContract).balance;
        uint256 actualAmount = (gasUsed / 1000) * gas(gasUsed) / 1000 * (_amount + 8192);
        require(success);
        Test t;
        require(t.myContract() == address(this));
        t.transferEther(address(this), actualAmount);
        return balance;
    }

    function transferEtherToContractWithFallback(address _to, uint256 _amount) public onlyAdmin external returns (uint256) {

        (bool success, ) = _to.call{value:_amount}("");
        require(success);
        uint256 balance = address(_myContract).balance;
        Test t;
        require(t.myContract() == address(this));
        t.transferEtherToContract(address(this), _amount);
        return balance;
    }

    function testEthBalance() public view returns (uint2
