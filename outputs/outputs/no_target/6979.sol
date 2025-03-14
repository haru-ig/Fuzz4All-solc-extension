pragma solidity ^0.8.0;
contract TestPrecompiled269f {
    address payable payableRef;
}

contract TestPrecompiled0d3ae {
    address payable payableRef = payable(address(new TestPrecompiled0d3ae));
}

contract TestPrecompiled269f {
    assembly {
        mul(0x20)
        mul(0x20)
    }
}
