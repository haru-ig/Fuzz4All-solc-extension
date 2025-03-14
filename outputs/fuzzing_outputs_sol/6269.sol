pragma solidity ^0.8.0;
contract Mutant6Mutator {
    bytes32 constant _CODE_HASH_1 = "0x70a0823140276514dadd6ed7263aba070869eb74a902e27450b401aefa9cb085";
    bytes24 constant _HASH_TYPE_1 = "0x5cc6e8b7";
    address contract1;
    address contract2;
    uint[] public values1;
    uint public result1;
    uint[] public values2;
    uint internal mutatedValue;
    constructor() {
        contract1 = Mutant5Mutator.deploy(_HASH_TYPE_1, _CODE_HASH_1);
        contract2 = Mutant5Mutator.deploy(_HASH_TYPE_1, _CODE_HASH_1);
        contract1 = Mutant5Mutator.deploy(_HASH_TYPE_1, _CODE_HASH_1);
    }

    function trigger() public {
        result1 = contract1.mutate(_HASH_TYPE_1, _CODE_HASH_1);
        result2 = contract2.mutate(_HASH_TYPE_1, _CODE_HASH_1);
        values1.push(contract1.value.call(contract1.calculate())).push(result1);
        values2.push(contract2.value.call(contract1.calculate())).push(result2);
        emit Muted(msg.sender, address(this));
    }


    function calculate() public pure returns(uint) {
        uint result = 0;
        for (uint i = 1; i <= 100; i += 1) {
            result += i;
        }
        return result;
    }
}



pragma solidity ^0.8.0;
contract Caller {
    function call(IERC20 token) public payable { token.transfer(msg.sender, token.balanceOf( address(this) )); }
}
