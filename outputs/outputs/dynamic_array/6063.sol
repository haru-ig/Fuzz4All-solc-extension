pragma solidity ^0.8.0;
contract Test4294967296StructsArray {
    uint[] public data;
    struct nested
    {
        uint nesteddata;
    }
    struct
    {
       nested[] nested1;
    }[][] array;
    constructor(uint _x) public {
        for (uint i = 0; i <= 16; i++)
        {
            nested memory x;
            nested.nesteddata = i;
            x.nesteddata = i;
            memory mem;
            mem.nesteddata = i;
            data.push(mem);
        }
        nested memory x;
        data.push(51);
        x.nesteddata = 0;
    }
    fallback() external {
    }
}
