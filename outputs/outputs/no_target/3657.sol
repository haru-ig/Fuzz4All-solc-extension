pragma solidity ^0.8.0;
contract C {
    uint private constant value = 1;
    uint public constant b = 2;
    uint constant constantMax = 2**256 - 1;
}
contract D {
    uint private constant value = 1;
    uint public constant b = 0xfffffffffffffffffffffffe;
    uint constant constantMin = 0xfffffffffffffffffffffffe;
}
contract F {
    uint private constant value = 1;
    uint public constant b = 0xffffffffffffffffffffff800000000000000000000000000000000000000000000000000000000000000;
    uint constant constantMax = 0xffffffffffffffffffffff7fffffff;
}
contract Fu {
    uint private constant value = 1;
    uint nonReentrantConstant;
    uint nonReentrantConstantRevert;

    event nonReentrantConstantEvent();
    event nonReentrantConstantRevertEvent();

    function nonreentrantConstant() onlyPublic public view returns (uint) {
        return nonReentrantConstant;
    }
    function nonreentrantConstantRevert() onlyPublic public view returns (uint)  revert {
        return nonReentrantConstantRevert;
    }
}
contract G {
    uint public constant value = 1;
    uint public constant b = 0;

    function testUintSize() public {
        require(value == 1 && b == 2);
    }
}
contract H {
    uint public constant value = 1;
    uint public constant b = 0;

    function testUintSize() public {


        require(value == 1 + (uint256(0).add(1)).div(uint256(2)));
    }
}
contract IA {
    uint public c;

    constructor() {
        c = 0;
    }
    function method() public pure {
    }
}
contract
