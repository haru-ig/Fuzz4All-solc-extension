pragma solidity ^0.8.0;
contract ContractWithNewModifier {
    function generate() public view returns (address){
        return (address(this));
    }
}

pragma solidity ^0.8.0;
contract ContractWithNewModifier {
    struct A {
        function f() public view returns (uint32 x) {
            return 2;
        }
    }
}

pragma solidity ^0.8.0;
contract SomeContract {
}





pragma solidity ^0.8.0;
contract Test {
    function foo(address payable x) public{
        _ = x * 22;
        _ = x + 2;
    }
}
