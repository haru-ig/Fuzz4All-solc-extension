pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalent2 {
    bytes32 a;
    address public address;
    constructor(uint _x) public {
        bytes32 x;
        x = bytes32(_x);
        address = address(a);
    }
    function testAddress() public view returns(address){
        bytes32 x;
        assembly {
        let x1 := mload(0)
        mstore(0, x1)
        x := x1
        }
        return address(uint(x));
    }
    function testMethod2() public view returns(uint){
        bytes32 x;
        address _a;
        assembly {
            let x1 := mload(0)
            mstore(0, x1)
            x := x1

            _a := and(x1, 0xffffffff)
            mstore(0, add(x1, _a))
        }
        return and(uint(x), _a);
    }
}
