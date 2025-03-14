pragma solidity ^0.8.0;
contract L08 {
    uint public mydata;
    uint public mydata2;
    function L08() public {
        mydata = value;
        mydata2 = value;
        mydata = mydata + mydata2;
    }
    mapping(uint => uint) public data;
    mapping(bytes32 => uint[]) public mapping2;
    constructor() public payable {
        mydata = 4294967295;
        mydata2 = mydata;
    }
    function () public payable {
        mydata2 = 4293221985;
    }
    uint[] public array;
}
