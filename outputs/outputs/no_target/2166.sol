pragma solidity ^0.8.0;
contract Modifications4_SEM7 {
    constructor(uint256 _x, uint256 _y) public {
        a = (((_x * 0xF7EAF29796506E8B040B454828D7353D) * _y) >> (8 - 27));
    }
    uint256 public a;
}
contract Modifications5_SEM7 {
    contract C {
        function f() internal pure returns(uint256) {
            unchecked {
                return (a / (0x1234 - 0xF7EAF296)) < 0;
            }
        }
    }
    constructor(uint256 _x, uint256 _y) public {
        uint256 a1 = a / (((_x * 0xF7EAF29796506E8B040B454828D7353D) * _y) >> (8 - 27));
    }
    uint256 public a;
}
contract Modifications6_SEM6 {
    uint256 constant private a = (uint256(0xF7EAF29796506E8B040B454828D7353D) / (uint256(0x1234 - 0xF7EAF296)));
}
