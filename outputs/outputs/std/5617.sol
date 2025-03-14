pragma solidity ^0.8.0;
contract M53{
    uint private x;
    constructor(){
    }
    function increase(uint _x) public{
        x=x+_x;
    }
    function decrease(uint _x) public returns (uint){
        return x=_x.sub(1,_x);
    }
    function multiply(uint _y) public{
        x = x.mul(_y);
    }
    function divide(uint _y) public{
        uint result = x.div(_y);
        x = result;
    }
}
address payable owner;
contract M246{
    uint public x;
    address payable[] private myArray;
    constructor(){
        myArray.push(msg.sender);
    }
    modifier onlyCaller{
        require(msg.sender == owner);
        _;
    }
    modifier onlyAddress{
        require(isAddress(msg.sender));
        _;
    }
    function increase(uint _x)public onlyCaller{
        x=x+_x;
    }
    function decrease(uint _x)public onlyAddress returns (uint) {
        return x=_x.sub(1,_x);
    }
    function setAdd(uint _x) public onlyCaller{
        myArray.push(msg.sender);
        x=x+_x;
    }
    function setSub(uint _x) public onlyCaller{
        myArray.push(msg.sender);
        x=x-_x;
    }
    function isAddress(address _addr)private view returns(bool){
        bool match=false;
        for (uint i = 0; i < myArray.length; ++i) {
            if(myArray[i] == _addr){
                match=true;
            }
        }
        return match;
    }
    function getLength()public view returns(uint){
        return myArray.length;
    }
}
contract M87{
    function createValue(uint val){
        return 1819 + val;
    }
}
contract M246_4{
    uint public x;
    uint a;
    address payable[] private myArray;
    bool public firstRun;
    uint public myNum=5289;
    constructor(){
        a = createValue(myNum);
        myArray.push(msg.sender);
    }
    function increase(uint _x)public{
        a=myNum+_x;
        x=x+_x;
    }
    function decrease(uint _x)public returns (uint){
        a=myNum-_x;
        return x=_x.sub(1,_x);
    }
    function setAdd(uint _x) public{
        a=createValue(myNum
