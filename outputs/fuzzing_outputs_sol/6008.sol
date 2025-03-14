pragma solidity ^0.8.0;
contract Interface1 is Interface3 {
    function getData(uint) public pure returns (uint) {return 2; }
}
contract Interface2 is Interface3, Interface1 {
    function getData(uint) public view returns (uint) {return 3; }
    function setData(uint) payable public { }
    function getData() public view returns (uint) {return 4; }
}
contract Caller {
    address public contractAddress;
    constructor() public {
    	contractAddress = deploySimple();
    }


    function deploySimple() public returns (address) {
    	return address(new Interface2());
    }
}
