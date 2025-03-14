pragma solidity ^0.8.0;
contract G {
    struct MyUintArray { uint[] mydata_; }
    uint[] public mydata;
    function G() public {
        MyUintArray mydata; mydata.mydata_ = new uint[](2);
        mydata.mydata_[0] = 1;
        mydata.mydata_[1] = 2;
        mydata.mydata_[0] = 0;
        mydata.mydata_[1] = 5;
        uint[] memory mydata2 = data;
    }
}

pragma solidity ^0.8.0;
contract B {
    struct MyUintArray { uint a_; uint b_; uint[] mydata_; }
    uint public a;
    uint public b;
    uint[] public data;
    function B() public {

        MyUintArray mydata; mydata.a_ = a; mydata.b_ = b; mydata.mydata_ = new uint[](2);
        mydata.mydata_[0] = 1;
        mydata.mydata_[1] = 2;
        mydata.mydata_[0] = 0;
        mydata.mydata_[1] = 5;
        data = data2;
    }
}

pragma solidity ^0.8.0;
contract B1 {
    struct MyUintArray { uint a_; uint[] mydata_; }
    uint public a;
    uint[] public data;
    function B(uint a_) public {
        MyUintArray mydata; mydata.a_ = a_; mydata.mydata_ = new uint[](2);
        mydata.mydata_[0] = 1;
        mydata.mydata_[1] = 2;
        mydata.mydata_[0] = 0;
        mydata.mydata_[1] = 5;
        data = data2;
    }

    function B1() public {
        a = 5;
    }
}
/* In this version, you can declare a dynamic array in a function
