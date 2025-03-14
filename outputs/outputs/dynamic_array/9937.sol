pragma solidity ^0.8.0;
contract SemanticTest_v3 {
    using SafeMath for uint;
    uint public uint128Const;
    function setConst(uint _value) public{
        uint128Const = _value;
    }
    function getConst() public view returns (uint){
        return uint128Const;
    }

}
