pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract Array {

    struct Elem {
    uint data;
    bool sign;
    }
    uint[] internal elements;
    uint internal length;



    function pushBack(Elem memory data) public {
        require(length < elements.length);
        elements.push(data);
        length += 1;
    }
    function set(uint index, Elem memory data) public {
        require(uint(length) > index);
        elements[index] = data;
    }
    function get(uint index) public view returns (Elem memory){
        require(uint(length) > index);
        return elements[index];
    }
}
