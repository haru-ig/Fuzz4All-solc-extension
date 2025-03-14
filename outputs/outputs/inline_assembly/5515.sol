pragma solidity ^0.8.0;
contract ImmutableBc6 {
    uint public variableA;

    function test() public returns (uint[1] memory) {
        uint[1] memory var1;
        var1;
        return var1;
    }
}

pragma solidity ^0.8.0;
contract ImmutableBc6 {
    uint immutable constant variableA = 5;
    function test() public returns (uint[1] memory) {
        uint[1] memory var1;
        var1;
        return var1;
    }
}

pragma solidity ^0.8.0;
contract ImmutableBc6 {
    uint constant immutable variableA = 5;
    mapping(address => uint) memory addressToValue;
    function add(address target) public returns (uint) {
        addressToValue[target] = variableA;
        return 5;
    }
    uint get(address target) public view returns (uint) {
        return addressToValue[target];
    }

}

pragma solidity ^0.8.0;
contract ImmutableBc6 {
    uint constant immutable variableA = 5;
    mapping(address => uint) memory addressToValue;
    function add(address target) public returns (uint) {
        addressToValue[target] = variableA;
        uint var3 = addressToValue[target];
        return var3;
    }
    uint get(address target) public view returns (uint) {
        uint var3 = addressToValue[target];
        return var3;
    }
}
