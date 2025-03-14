pragma solidity ^0.8.0;
contract Example
{
    uint m=500;
    uint[] intA;
    uint arrayB;
    uint min = 10000000000000000000;
    constructor () {
        intA.push(1);
        arrayB = random();
        m = 1000;
    }
    function random() internal pure returns (uint r) {
        r = uint(keccak256(abi.encodePacked(keccak256(abi.encode([uint(blockhash(-1))]) ))) % 3e16);
    }
    function minValue() external view returns (uint temp) {
        temp = min;
    }
    function maxValue() external view returns (uint minTemp, uint maxTemp) {
        uint min = +(10**180)-10**180;
        minTemp = 10;
        maxTemp = 0;
        if(m>numMin())maxTemp = m;
        else {
            if( minTemp > m) minTemp = m;
            else if( ( minTemp + 10000000000000000000) < m && m < numMax()) {
                if(temp < numMin())minTemp = m;
                else temp = numMin();
            }
            else if(temp==0&&minTemp==0)minTemp = 0;
            else return (minTemp, maxTemp);
        }
    }
    function numMin() public view returns (uint minTemp) {
        uint min = +(10**180)-10**180;
        minTemp = 10;
        if(m>m) minTemp = m;
        else if (( 10) < m) {
            if(temp < minTemp)minTemp = m;
            else temp = minTemp;
        }
        else return (minTemp, 0);
    }
    function numMax() public view returns (uint maxTemp) {
        uint max = +(10**180)-10**180;
        maxTemp = 0;
        if(m>m) maxTemp = m;
        else if ( ( 10) < m) {
            if(temp > maxTemp)maxTemp = m;
            else return (minTemp, maxTemp);
        }
        else return (minTemp, 0);
    }
}

address public addrA=0x14ce6187c029ad3c3fb45e30a3e2667834e804c0;
address public addrB=0x68f8b7adaa69f81cb9bc6d5d25a866b50e91f31a;
Function call address from 0x602
