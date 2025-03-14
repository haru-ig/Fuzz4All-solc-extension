pragma solidity ^0.8.0;
contract ArrayMutator{
    uint[] public a;
    address public b;
    constructor(){
        a = new uint[](1);
        a[0] = 0;
        b = address(0);
        a[0] = a[0] + 2;
    }
}

pragma solidity ^0.8.0;
contract ArrayResetter{
    uint[] public a;
    address public b;
    constructor(){
        a = new uint[](1);
        a[0] = 0;
        b = address(0);
    }
}


pragma solidity ^0.8.0;
contract ArrayAccess{
    uint[] public a;
    address public x;
    address public y;
    uint public z;
    constructor(address _x, address _y){
        a = new uint[](1);
        a[0] = 0;
        x = _x;
        y = _y;
        z = 6;
    }

    function insideArray(uint x) public view returns (bool) {
        for(uint i = 0;i < a.length;i++) {
            if(a[i] == x) {
                return true;
            }
        }
        return false;
    }

    function insideArray2(uint x) public view returns (uint) {
        uint i = 0;
        while(a[i]!= x) {
            i++;
        }
        return i;
    }


    function getMiddleElement(uint i) public view returns (uint) {
        return a[a.length/2 + i];
    }
}

pragma solidity ^0.8.0;
contract ArrayAccess2{
    uint[] public a;
    address public x;
    address public y;
    uint public z;
    constructor(address _x, address _y){
        a = new uint[](1);
        a[0] = 0;
        x = _x;
        y = _y;
        z = 6;
    }
    function elementInArray(uint i) public view returns (uint) {
        return a[i];
    }
    function multipleElement(uint i) public view returns (uint) {
        return a[i * 2];
    }
    function multiElement(uint i) public view returns (uint) {
        return a[a.length * 2 + i
