pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract SomeLib{

    function log0(uint x) public pure returns(uint){return uint((uint160(x))*0x200000000000000000000000000000000+1);}

    function log1(uint x) public pure returns(uint){return uint((uint160(x))*0x200000000000000000000000000000000+1);}

    function log2(uint x) public pure returns(uint){return uint((uint160(x))*0x20000000000000000000000000000000000000+1);}

    function log3(uint x) public pure returns(uint){return uint((uint160(x))*0x2000000000000000000000000000000000000000+1);}

    function log4(uint x) public pure returns(uint){return uint((uint160(x))*0x20000000000000000000000000000000000000+1);}
}
