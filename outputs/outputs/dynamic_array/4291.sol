pragma solidity ^0.8.0;
contract G9 {
    mapping(uint32 => uint32[]) _data;
    modifier Get{
        return _data.get(2)[1];
    }
    constructor() public Get {}
    function getdata() public view virtual returns (uint32) {return _data.get(2)[1];}
}
