pragma solidity ^0.8.0;
contract Semantic0015b {
    uint256 input;
    function f() external {
        input += 1;
    }
}

pragma solidity ^0.8.0;
contract Semantic0015c {
    uint256 input;
    function g(uint256 input) public {
        input = input + 1;
        input = input + input;
        input = input + msg.sender;
    }
}

pragma solidity ^0.8.0;
contract Semantic0015d {
    message S;
    function f() public {
        S memory s;
        s.x = 1;
        s.x = s.x + 1;
        s.x = s.x + s.x;
        s.x = s.x + (uint8(21));
        s.x = s.x + msg.sender;
    }
}
contract Semantic0015e {
    function _compute(uint value) internal pure {
        if (value < 2 ^ 128) {

            revert(string(abi.encodePacked("Invalid input:", value)));
        }
    }
    uint256 public constant value = 641014;
    function f() public {
        _compute(value);
    }
}
