pragma solidity ^0.8.0;
library Lib {
    event Event(Lib.MyStruct memory myStruct);
    event SecondEvent(Lib.MyStruct memory myStruct);
    function LogA(uint8 value) public { emit Event(Lib.MyStruct(value));}
    function LogB(uint16 value) public { emit Event(Lib.MyStruct(value));}
    function LogC(uint256 value) public { emit Event(Lib.MyStruct(value));}
    function LogC(Lib.MyStruct memory myStruct) public { emit Event(myStruct);}
    function LogB() public { emit Event(Lib.MyStruct(19213));}
    function LogA() public { emit Event(Lib.MyStruct(19113));}
}
