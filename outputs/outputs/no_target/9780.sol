pragma solidity ^0.8.0;
import "./Ia.sol";
contract A {
    address payable addr;
    constructor(address _pay) payable {
        addr = _pay;
    }
    function test(address account)public{
        assert((addr).balance>=20000000000000000000);
        uint x = 15;
        uint y = 25;
        uint x2;
        uint y2;
        x2 = 11;
        y2 = 9;
        uint x3;
        uint y3;
        if((x2+y2)!= x2+y2){
            assert(false);
        }
        if(x>=(11+9)){
            assert(true);
        }
        if(x>x1 && x>=x3){
            assert(true);
        }
        if((x2-y2)!= (x2-y2)){
            assert(false);
        }
        if(@toPay(x2)){
            assert(true);
        }
        if(@toPay(x2-x2-y2)){
            assert(false);
        }
        require(x>=x2*y3, "Test fail");
    }
    @pure
    function toPay(uint256 v){
        if(v>v){
            return true;
        }
        return false;
    }
}
