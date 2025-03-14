pragma solidity ^0.8.0;
contract Convert{
    function fromString(string memory a) public pure returns(string memory b){
        if(a == "0xa"){
            return "0x0F";
        }else if(a == "0xb"){
            return "0xB";
        }
        return a;
    }
}
