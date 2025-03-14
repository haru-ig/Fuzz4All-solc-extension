pragma solidity ^0.8.0;
contract ContractA {
    function f() public pure returns (uint256 ret) {
        ret = 1;
    }
}
contract ContractB {
    function f() public  returns (uint256 ret) {
        ret = 1;
    }
}
contract ContractA_2 is ContractA, ContractB {
    function f() public pure returns (uint256 ret) {
        ret = 1;
    }
}



interface ContractA {
    function foo() public pure {
        require(msg.sig!= "");
    }
}
contract ContractC
{
    function f (address payable x, uint y) public pure
    {
            uint i = 0;
            for (i = 0; i < 10; i=i+1){
                x.send(y);
            }
    }
}
contract A is ContractA
{
     function payable f() public
     {
            require(msg.sender > 1, "foo");
     }
}
contract ContractA2 is ContractA {
     function payable f() public virtual
     {
            require(msg.sender > 2, "foo");
     }
}
contract A2 is ContractA2
{
     function payable f() public
     {
            require(msg.sender > 3, "foo");
     }
}
contract B is ContractA {
     mapping (address => bool) public addresses;
}
contract ContractC is B {
     uint public i = 1;
}
contract B is ContractA
{
     uint public i = 2;
}
contract A is B{
     uint public immutable v=2;
}
contract ContractB is B
{
     mapping (address => uint256) public a;
}
contract ContractA is ContractB {
     function payable f() public
     {
            require(a[msg.sender] > 3, "foo");
     }
}
contract A is B {
     uint public f() public returns (uint256 x) {
            return 23;
     }
}
contract ContractA {
     function e (uint256 x) public pure returns (uint256 ret){
            if (x <= 1) {
                    ret = 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
            } else {
                    ret = 1;
            }
     }
}
contract ContractB {
     function e (uint256 x) public pure returns (uint256 ret){
            require (x >= 10);
            ret = x - 1;
     }
}
contract A is ContractB {
     uint256 public
