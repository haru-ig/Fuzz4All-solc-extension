pragma solidity ^0.8.0;
import "./Array.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
contract MutatedArray is Array_2 {
    uint256 max = 2000000;
    bool isMutated;
    uint64 val;
    uint8 idx;
    uint256[] public x;
    uint256 max1=0x00000000000000000000000000000000000000000000000000000000000000000;
    function MutatedArray(uint8 i) public {
        adr.length=5;
        adr.push(address(this));
        adr.push(address(this));
        adr.push(address(this));
        adr.push(address(this));
        adr[3]=address(this);
        if(i==1){
            uint64[] memory val = new uint64[](7);
            val[0]=0x000000000000000000000000000000000000000000000000000000000000000000;
            val[1]=0xfffffffffffffffffffffff7;
            val[2]=0xfffffffffffffffffffffff8;
            val[3]=0xfffffffffffffffffffffffb;
            val[4]=0xfffffffffffffffffffffffc;
            val[5]=0xfffffffffffffffffffffffd;
            val[6]=0xfffffffffffffffffffffffe;
            a1=val;
        }
        isMutated=true;
    }
    function Mutarray1() public view returns (uint256[] memory){
        adr.push(address(this));
        adr.push(address(this));
        adr.push(address(this));
        adr.push(address(this));
        adr[3]=address(this);
        if(!isMutated){
            return array;
        }if(idx<6){
            uint8 val1=idx;
            return val;
        }
        uint64[] memory val = new uint64[](0);
        return val;
    }
    function Mutarray2() public pure returns (uint256){
        uint64[] memory val = new uint64[](0);
        return val;
    }
    function Array2() public view returns (uint256[] memory){
        adr.push(address(this));
        adr.push(address(this));
        adr.push(address(this));
        adr.push(
