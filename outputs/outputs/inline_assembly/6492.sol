pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
import "./GeneratedMigration06.sol";
contract MixedContactsExample55 {
    struct A{
        uint256 f1;
    }
    struct B{
        uint256 f2;
    }
    address _a;
    address _b;
    function setA(address a) public {
        _a = a;
    }
    function setB(address b) public {
        _b = b;
    }
    function getA( ) public view returns(address a) {
        return(_a);
    }
    function getB( ) public view returns(address b) {
        return(_b);
    }
    function set_new(A memory a, B memory b ) public {
        if(address(a)=='...') return;
        uint256 h = 20;
        A memory a1 = a;
        B memory b1 = b;
        address b2;
        for(uint k;k<50;k++){
            a1.setFB(h,20);
            b1.setFB(h,20);
            A memory temp_a1_a = a1;
            B memory temp_b1_b = b1;
            address temp_b2 = b2;
            h = h + 1;
            setA(temp_a1_a);
            setB(temp_b1_b);
            setB(temp_b2);
        }
        setA(a1);
        setB(b1);
    }
    function setFB( uint _h, uint _f2) public {
        A memory a = A(bytes(abi.encodePacked(_a)));
        B memory b = B(bytes(abi.encodePacked(_b)));
        setA(a);
        setB(b);
    }
}
