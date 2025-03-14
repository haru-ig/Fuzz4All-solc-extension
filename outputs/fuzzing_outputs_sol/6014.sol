pragma solidity ^0.8.0;
contract Interface1 {
    function getData(uint) public view returns (uint){ return 1; }
    function modify(uint) public { emit ModifyEvent (block.timestamp); }
}
interface Interface2 {
    function getData(uint) public view returns (uint);
    function modify(uint) public;
}
contract Caller {
    interface I is Interface1 {
        function modify(uint) public;
    }
    I x;
    function call() public { x.modify(x.getData(1)); }
    function getModifiedData(uint) public view returns (uint){
        return x.modify(x.getData(1));
    }
    function getModifiedData2(uint) public view returns (uint){
        uint x = x.modify(x.getData(1));
        emit ModifyEvent2(x, block.timestamp);
        return x;
    }
}
