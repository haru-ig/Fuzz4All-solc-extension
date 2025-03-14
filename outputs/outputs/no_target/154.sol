pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T {
    address b = payable(0x1);
    string bstr;
    function f(){
        bstr = "new string";
    }
    function readBString() public view returns (string memory){
        return bstr;
    }
}
