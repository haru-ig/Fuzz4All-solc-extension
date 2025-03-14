pragma solidity ^0.8.0;
contract Example8NoMod {
    function add10And11Plus(uint x, uint y) public pure returns (uint) {
        uint sum = 0;
        sum += x;
        sum += y + sum;
        sum += y + sum;
        sum += y + sum;
        sum += y + sum;
        return x + y + sum;
    }
}
contract Munch {
    function a254() public pure returns (uint){
        return uint(-1) ^ uint(uint(uint(-1)) >> 254);
    }
}
