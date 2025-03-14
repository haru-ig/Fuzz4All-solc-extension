pragma solidity ^0.8.0;
contract Interface3 {
    function getData (uint a, bytes memory) public view returns (uint){ return 2; }
}
contract Interface3 {
    function getDataWithEther (uint a) public returns (uint x, uint){
        return (5, 6);
    }
}
contract Fallback {
    function handle(uint) public pure {
    }
    function fallback() public payable {
        handle(2);
    }
    receive() external payable {}
}
contract Interface3 is Interface2, Interface3 {
    constructor(){
    }
    function getData (uint a, bytes memory  ) public view returns (uint){ return 3; }
    function getDataWithEther(uint a) public returns (uint x, uint y) {
        return getData(6, abi.encodeWithSignature("push(uint)", 7));
    }
}
