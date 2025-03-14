pragma solidity ^0.8.0;
contract Burn {
    function Burn(address burner) {
        msg.sender == burner;
    }
}

contract Test {
    function f(uint256 _b, uint256 _a) internal pure returns (bool) {
       _b = (_b / (_a - _b));
       return (_b == 0);
    }
}

contract Call {
    function test1() external {}
    function test2() public {
        test1();
    }
}
