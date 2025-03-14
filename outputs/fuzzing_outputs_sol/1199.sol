pragma solidity ^0.8.0;
contract SemanticsEquivalence7 {
    struct Data { uint x; }
    Data internal data;
    constructor() { data.x = 5; }
    function run() public { }
}
contract ContractA {
    function run() public pure { }
}
contract ContractB is ContractA {
}
contract ContractC is ContractA {
    function run() public pure { data.x = 7; }
}

contract ContrToCall {
    function run(uint, uint256, uint) public virtual { }
}
contract Caller is ContrToCall {
    function run(uint callValue, uint256, uint expected) public {
        contract A is SemanticsEquivalence6 {
            uint x = 5;
            function run() public {
                require(value > 0);
                x = add(x, value);
                require(data1.x3 == x);
            }
            function add(uint a, uint b) public pure returns (uint c) {
                return a + b;
            }
        }
        ContractB x;
        A x1;
        Data data2;
        x = x1.run();
    }
}
