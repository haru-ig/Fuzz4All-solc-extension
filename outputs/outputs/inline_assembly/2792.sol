pragma solidity ^0.8.0;
contract C {
    address owner;
    mapping(string => uint) public map;
    function update(){
        map["A"] = 0;
        map["B"] = 0;
        map ["A"] = 1;
        map["B"] = 0;
        map["C"] = 0;
        map["C"] = 1;
        map["C"] = 2;
        map["C"] = 3;
    }
    function remove() public {
        map["A"] = 0;
        map["B"] = 0;
    }
    function removeWithRecursion(string calldata value,uint id) public {
        if (id % 2 == 1) {
            delete map[value];
        }else {
            map[value] = 0;
        }
        map["C"] = 0;
    }
}
