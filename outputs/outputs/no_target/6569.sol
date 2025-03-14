pragma solidity ^0.8.0;
contract myContractD is modifierD
{
    uint private _y;
    constructor() public {
        _y = uint(_y / 256);
    }
    function h() public view returns (uint) {
        return _y + uint(uint(_y / 256));
    }
    function i(uint x) public pure returns(uint){
        return x+uint(uint(x/256));
    }
}
