pragma solidity ^0.8.0;
contract C71 {
        address public owner;
        function f(address) public{
        }
}
contract C72 {
        address public owner;
        function f() public{
        }
}
contract C85 {
        function f2(uint) public {
        }
}

pragma solidity ^0.8.0;
contract C58 {
        function f(uint) public {
            assert(true);
            revert("fail");
        }
}
contract C90 {
        address payable public o;
        function f() public {
            o.transfer(msg.value);
        }
}
pragma solidity ^0.8.0;
