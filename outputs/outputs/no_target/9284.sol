pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract semanticallyEquivTest1{
    function test() public pure{
        bytes memory emptyStruct;
        bytes memory returnStruct1;
        bytes memory returnStruct2;
        bool r1 = false;
        bool r2;
        uint w1;
        uint w2 = 2;
        uint w;
        bool b1;
        bool b2;
        address a1;
        address a2;
        uint160 x1;
        uint160 x2;
        uint160 x;
        bytes p1;
        bytes p2;
        (r1,r2) = (false,false);
        (w1,w2) = (1,2);
        (b1,b2) = (true,false);
        (a1,a2) = (address(this),address(0));
        (x1,x2) = (0,0);
        (x,p1,p2) = (0,bytes(""),bytes(""));
        w = w1+w2;
        r1 = w1==w||w1>w;
        bool x = (p1=="");
        r1 = x1<x;

        r2 = a1<a2;
        b2 = a2>a1&&a1!="";
    }
}
