pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
library MixedContactsExample55_library {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    function setFB(uint h, uint f2) public {
        new A().f1=h;
        new bytes4();
        new A().f1=h;
    }
    function getFB( ) public view returns(uint h,uint f1) {
        return(new bytes4(),new bytes4());
    }
    function setFBH(uint h, uint f2) public {
        new A().f1=h;
        new bytes4();
        new A().f1=h;
    }
    function getFBH( ) public view returns(uint h,uint hF,uint256 f1) {
        return(new bytes4(),new bytes4(),new bytes4());
    }
}
contract MixedContactsExample55 {
    function setFB( bytes memory _input_0) public {
        uint32.transfer(bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0),bytes memory(_input_0
