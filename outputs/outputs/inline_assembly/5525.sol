pragma solidity ^0.8.0;
contract ImmutableBc6 {
    uint public constant variableB = 0;
uint public constant variableA = 1;
    func test() public returns (uint, uint) {
        uint var1;
        uint var2;
        assembly {
            var1 := mul(
                mload(add(0x40,0x20)),
                var4
            )
            var2 := add(
                mul(
                    div(
                        mload(add(248, 0x30)),
                        0x1000
                    ),
                    0x2
                ),
                0x5
            )
        }
        return (var1, var2);
    }
}
