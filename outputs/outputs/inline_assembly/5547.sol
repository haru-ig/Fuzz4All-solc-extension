pragma solidity ^0.8.0;
contract ConstantAccessBlock01 {
    uint constant constantA = 0;
    function test() public pure {
        uint _var1;
        uint _var2;
        assembly {
            _var1 := constantA
            _var2 := constataineA
        }
        require(_var1 < 3);
        require(_var2 < 3);
    }
}
pragma solidity ^0.8.0;
contract ConstantAccessBlock01 {
    uint constant constantA = 0;
    function test() public pure {
        uint _var1;
        uint _var2;
        assembly {
            _var1 := constantA
            _var2 := constataineA
            _var1 := _var2
            _var1 := constantA
            _var2 := _var1
        }
        require(_var1 < 3);
        require(_var2 < 3);
    }
}
pragma solidity ^0.8.0;
contract ConstantAccessBlock01 {
    uint constant constantA = 0;
    function test() public pure {
        uint _var1;
        uint _var2;
        assembly {
            _var1 := constantA
            _var2 := constataineA
            _var1 := constantA
            _var2 := constantA
            _var1 := _var2
            _var2 := _var1
        }
        require(_var1 < 3);
        require(_var2 < 3);
    }
}
