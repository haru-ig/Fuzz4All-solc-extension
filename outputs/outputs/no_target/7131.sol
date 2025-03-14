pragma solidity ^0.8.0;
contract Token {
    uint public _amount = 1;
    function setAmount() public {
        _amount = 2;
    }
    function getAmount() public view returns (uint) {
        return _amount;
    }
}
contract Main {
    address[] public list;
    address[] public list2;
    address[] public list3;
    uint public _idx = 0;
    constructor(address[] memory list_) public {
        list = list_;
    }
    function setList() public {
        list = new address[](3);
        list[0] = new Token();
        list[1] = address(new Test());
        list2 = new address[](2);
        list2[0] = new Test();
        list2[1] = new Test();
        _idx = 0;
    }
    function setList2() public {
        list2 = new address[](3);
        list2[0] = new Token();
        list2[1] = address(new Test());
        list3 = new address[](2);
        list3[0] = address(new Test());
        list2[1] = new Test();
        _idx = 0;
    }
    function getID() public view returns (uint) {
        return _idx;
    }
    function getAddr() public returns (address) {
        return list[_idx];
    }
    function getAddr2() public returns (address) {
       return list2[_idx];
    }
    function getAddr3() public returns (address) {
        return list3[_idx];
    }
    function next() public returns (uint) {
        _idx++;
        return _idx;
    }
}
