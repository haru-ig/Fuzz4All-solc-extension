pragma solidity ^0.8.0;
contract Contract1{
    uint256 public c;
    string public s;
    constructor(uint256 val) {

        if (val == 10) {
            num = 1;
            c = 0;
            s = "a";
        }

        if (val < 10) {
            num = 4;
            c = 0;
            s = "b";
        }
    }
    function getvalue() public pure returns(uint256){
        return num;
    }
    function getstring() public view returns(string memory) {
        return s;
    }
    function add() public pure{
        add(10);
    }
    function add(uint256 number) public pure{
        num = num + number;
    }
}
contract Caller{
    address public myContractAddress;
    uint256 public myContractCallValue;

    modifier callCaller(uint256 amount) {
        myContractAddress = address(msg.sender);
        myContractCallValue = amount;
        _;
    }
    constructor (uint256 contractValue) public {
        myContractAddress = address(new Contract1(contractValue));
        myContractCallValue = contractValue;
    }
    function getResult(uint256 callValue) public view returns (uint256) {
        return callContract();
    }
    function getResultFrom
