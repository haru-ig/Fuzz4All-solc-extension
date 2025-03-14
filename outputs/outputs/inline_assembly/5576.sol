pragma solidity ^0.8.0;
contract ConstantAccessBlock06 {
    mapping(address => uint) internal varMapping;


    uint public previousGen;

    function test() public view returns (bool) {
        bool _var = false;
        assembly {
            revert(mload(0x100))
        }
        return _var;
    }
}
