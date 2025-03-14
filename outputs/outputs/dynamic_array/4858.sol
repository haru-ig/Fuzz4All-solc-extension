pragma solidity ^0.8.0;
contract ArraysNested {
enum MyEnum {
    One,
    Two,
    Three,
    Four,
    Five,
    Six,
    Seven,
    Eight,
    Nine,
    Value
}
uint[10000]= [ One, Two, Three, Four, Five, Six, Seven, Eight, Nine ];
    function ArraysNested() public{
        require(ArraysNested.Value>0,"");
    }
    uint40[] myUint40;
    uint256 myUint256;
}
