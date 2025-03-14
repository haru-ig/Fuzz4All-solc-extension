pragma solidity ^0.8.0;
contract ConstantAccessBlock03 {
    bytes32 constant constantA = 0;
    function test() public pure {
        bytes32 _var1;
        assembly {
            _var1 := 0x0000000000000000000000000000000000000000
        }
        require(_var1 == 0);
    }
}

pragma solidity ^0.8.0;
contract ConstantAccessBlock04 {
    address constant constantA = address(0);

    function test() public pure {
        uint _var1;
        address _var2;
        assembly {
            _var1 := 0x00000000000000000000000000000000000000000
        }
        require(_var1 == 0);
        _var2 = address(uint(0xfefeff));
        require(ConstantAccessBlock04(address(uint(0xfefeff))).test() == true);
        require(_var2 == address(uint(0xfefeff)));

    }
    receive() external payable { require(address(0xfefeff) == constantA); }

    function call_test() external pure {
        uint _var1;
        address _var2;
        assembly {
            _var1 := 0x00000000000000000000000000000000000000000
        }
        require(_var1 == 0);
        _var2 = address(uint(0xfefeff));
        _ = ConstantAccessBlock04(address(uint(0xfefeff))).test();
        require(_var2 == address(uint(0xfefeff)));
    }
}
