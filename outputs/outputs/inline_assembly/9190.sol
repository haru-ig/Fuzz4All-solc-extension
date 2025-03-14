pragma solidity ^0.8.0;
contract B {
    struct SomeStruct {
        uint constant public _uint32 = 16**60;
        function mutated(uint _uint256) public pure returns (uint){
            return (uint) (_uint32 * (_uint256 - 1));
        }
    }
}
