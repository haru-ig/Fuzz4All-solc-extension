pragma solidity ^0.8.0;
contract Multiprecision{
    function GetMax(uint[5] memory x, uint y) public pure returns (uint max){
      uint z = x[y] * 2;
      max = z;
    }
    function Modify(
        uint[5] memory x,
        uint new1,
        uint new2,
        uint new3,
        uint new4,
        uint new5,
        uint y,
        uint a,
        uint b,
        uint c
    ) public pure {
        if((x[y] >= a)&&(x[y] <= b))
        {
          uint value = x[y];
          x[y] += value/new5 + (value % new5 * new4)/new4 + (value % new4 * new3)/new3 + (value % new3 * new2)/new2 + (value % new2 * new1)/new1;
        }
        else if(y < 4)
        {
          x[y] += new2;
        }
        else if(y == 4)
        {
          x[y] += new2;
        }
    }
}
contract Memory {
    uint public maxAddress;
    function Store(uint memory a) public {maxAddress = a;}
    function GetAddress(uint x) public view returns (uint){ return address(uint16(x)); }
}

pragma solidity ^0.8.0;
contract Memory{
    uint[] myArray;

    function getMyArray() public view returns(uint[]) { return myArray;}
    function Store(uint[5] memory a) public {myArray = a;}
    function GetLast(uint arr) public view returns (uint last { return myArray[arr]; }){
        last = myArray[arr];
    }
}
contract GetMax1 {
    function GetMax(uint a, uint b) public pure returns(uint c) { c = a; if(a > b) c = a; }
}










contract GetMax4 {
    function GetMax(uint x, uint y) public pure returns (uint c) {

        c = x;
        c = c * 2 + y;
    }
}
contract GetMax5 {
    function GetMax(uint x, uint
