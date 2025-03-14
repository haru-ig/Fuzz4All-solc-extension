pragma solidity ^0.8.0;
contract C21 {
        struct State {}
        function c() public pure {
                assembly {
                        calldatacopy(0,0,calldatasize())
                        revert(0,0)
                }
        }
}

pragma solidity ^0.8.0;
contract Test2 {
        function c() public {
                C23 cD;
                C21 cF;
                call(cD.c.value(0 ether)());
                calldatacopy(0,0,calldatasize());
                call(cF.c.value(0 ether)() value 0 memory());
                cD;
        }
        receive() external payable {}
}
contract FallbackTest {
        address addr;
        mapping(address => uint) balances;

        constructor(address _addr) {
                addr = _addr;
        }

        fallback() external payable {}

        function () external payable {}
        function deposit(uint i) public returns (uint) {
                balances[msg.sender] += i;
                return i;
        }
        function withdraw(uint w) public {
                balances[msg.sender] -= w;
                uint x = balances[addr];
                msg.sender.send(x);
        }
        function change(address _addr) public {
                balances[msg.sender] = 0;
                addr = _addr;
        }
}
