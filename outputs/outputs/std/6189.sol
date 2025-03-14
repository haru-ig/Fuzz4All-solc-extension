pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent2a {
    bytes32 public immutable a;
    function f(bytes32 b) public constant returns (bytes32){
        a = bytes32(a + b);
        return  bytes32(a + b);
    }
}

pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent2b {
    bytes32 array[2] = [bytes32("a"), bytes32("b")];
    uint128 b;
    function f() public returns (bytes32) {
        a = bytes32(uint256(array[0]));
        return bytes32(uint256(a) + uint256(array[1]));
    }
}

pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent3 {
    string public name;
    constructor () {name = "SmartContract"};
    function f() public returns (string memory name){
        name = "SmartContract";
        return name;
    }
}
