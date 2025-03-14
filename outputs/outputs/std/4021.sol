pragma solidity ^0.8.0;
contract Array {
    uint256[5] array;
    Array a;
    Array(uint256[5] memory a) public {array = a;}
    function incrementVal(uint256 i, uint256 x) public {a.setVal(a.getVal(i)+x);}
    function getVal(uint256 i) public view returns(uint256)
    {return a.head.val;}
    function getNext(uint256 i) public view returns (uint256)
    {return a.head.next;}
    function setNext(uint256 elem, uint256 next) public {a.setNext(elem, next);}
}
