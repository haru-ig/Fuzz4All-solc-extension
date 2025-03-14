pragma solidity ^0.8.0;
contract modifierB{
    function f() public view returns(uint256){
        uint256 r;
        if((uint8(500))<255 && 505>464 && 465<=485) return "ok";
        if(r>432) throw "b";
        return r;
    }
}
