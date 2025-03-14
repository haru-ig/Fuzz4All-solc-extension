pragma solidity ^0.8.0;
import "https://raw.githubusercontent.com/vigilance91/LogicBee/v2/truffle/contracts/Math.sol";

contract Array is Math {
    mapping(uint256=>uint256) internal index;
    mapping(uint256=>uint8) internal values;
    uint256[] private zeroArray;
    uint256[] private oneArray;
    uint256[] private twoArray;
    uint256[] private threeArray;
    uint256[] private fourArray;
    uint256[] private fiveArray;
    uint256[] private sixArray;

    function get() private view returns(uint256){
        return index[index.length];
    }

    function set(uint256 x) private{
        index[index.length]=x;
        values[x]=1;
    }

    function toUint8(uint256 i) public view returns(uint8 x){
        require(i<values.length,"Array error");
        x=values[i];
    }

    function toUint42(uint256 x) public view returns(uint42){
        uint42 y;
        (y,x)=intToUint42(x);
    }

    function append(uint256 x) private{
        index.push(x);
        values[x+1]=true;
    }

    function pop() public{
        require(index.length>0,"Array error");
        if(index.length<=32){index.pop();}
        else{
            uint256 k;
            for(k=index.length-1;k>3;){
                index[k-1]=index[k];
                values[index[k]]=true;
                k--;
            }
            index[index.length-1]=k;
            values[k]=true;
        }
    }
}
pragma solidity >=0.6.0;

import "./Array.sol";
contract Memory {
    function get() public view returns(uint8[] memory){
        return new uint8[](2);
    }
    function get_u8(uint256 i) public view returns(uint8){
        return values[i];
    }
    function get_arr(uint256[] memory v) public view returns(uint8[] memory){
        return v;
    }
}
pragma solidity ^0.8.0;
import "../../contracts/Array.sol";
contract MutateBigNeg10 extends Array {
    uint8[32] private twoByteArray;
    uint8[64] private fourBytes;
    uint8[128] private eightBytes;
    uint8[256] private sixteenBytes;
    uint8[] private threeArray;
    uint8[] private fourArray;
    uint8[] private fiveArray;
    uint8[] private sixArray;

    function append(uint256 x) public{
        append(x);
    }

    function pop() public{
        pop();
    }

    function set_oneByte(
