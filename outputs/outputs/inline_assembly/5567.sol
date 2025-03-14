pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract ConstantAccessBlock05a {
    uint constant constantA = 1;
    uint constant constantB = 1;
    function test() public pure returns ( uint successor, uint _var1, uint _var2 ) {
        uint _var1;
        uint _var2;
        assembly {


            _var1 := constantA
            _var2 := constantB
        }
        require(_var1 == constantA);
        require(_var2 == constantA);
        successor = constantA;
        return(successor, _var1, _var2);
    }
}
contract ConstantAccessBlock05b is ConstantAccessBlock05a {
    using Address for address;
    function test() public pure override {
        uint successor;
        uint _var1;
        uint _var2;
        assembly {








            _var1 := constantA
            _var2 := constantB
        }
        require(_var1 == constantA);
        require(_var2 == constantA);
        successor = constantA;
        require(address(this).call(abi.encodeWithSelector(Address.changeContractOwnership, address(this)))) == constantA);
        ConstantAccessBlock05a proxy = ConstantAccessBlock05a(address(this));
        proxy.test.value(4)();
    }
}
