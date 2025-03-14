pragma solidity ^0.8.0;
contract ContractOne {
    uint public value;
    uint public value2;
    uint public value3;

    function setOneThreeTwo(uint val) public {
        value = val;
        value2 = val;
        value3 = val;
    }
    function() external pure returns (uint) { return value; }
    function mutator() public view returns (uint) { return value2; }
}
pragma solidity ^0.8.0;
contract ContractTwo {
    uint public value;
    uint public value2;
    function setTwoThreeOne(uint val) public {
        value = val;
        value2 = val;
    }
    function() external pure returns (uint) { return value2; }
    function mutator() public view returns (uint) { return value; }
}
pragma solidity ^0.8.0;
contract Caller {
    function main() public {
        Mutator mutator;
        mutator.shouldBe(2);
        ContractOne contractOneOne;
        contractOneOne.setOneThreeTwo(2);
        mutator(0);
        mutator(1);
        mutator(2);
        ContractTwo contractOneTwo;
        contractOneTwo.setTwoThreeOne(2);
        contractOneOne.mutator();
        contractOneOne.mutator();
        contractOneOne.mutator();
        contractOneOne.mutator();
        contractOneOne.mutator();
        contractOneOne.mutator();
        ContractTwo contractOneTwo;
        contractOneTwo.mutator();
        contractOneTwo.mutator();
        contractOneTwo.mutator();
        contractOneOne.mutator();
    }
}
