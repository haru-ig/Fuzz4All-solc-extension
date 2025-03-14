pragma solidity ^0.8.0;
contract Arrays {
    uint[] public a;
    uint4 a1;
    constructor() public { a = new uint[](6); a1= a.length;}
    function len() public view returns (uint) {return a.length;}
}

pragma solidity ^0.8.0;
contract Arrays {
    uint[] a;
    uint4 a1;
    constructor() public { a = new uint[](6); a1= a.length;}
    function len() public view returns (uint) {if(a.length==1) return 0; else return a.length;}
}
