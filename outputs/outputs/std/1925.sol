pragma solidity ^0.8.0;
contract Cast {
    uint public num1;
    uint public num2;
    uint public result;
    constructor(uint r) {
        result = cast(10, r);
    }
    function cast(uint base, uint d) private pure returns (uint){
        return (abi.decode(d,_Cast.basetype)(base))*d;
    }
}
pragma solidity ^0.8.0;
contract _Cast{
    bytes4 _Cast;
    constructor(uint a){
        _Cast = bytes4(a);
    }
}
