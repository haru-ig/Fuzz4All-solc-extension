pragma solidity ^0.8.0;
contract MyEther {
    constructor() public {
    }
    receive() external {
    }
    function test() public {
    }
}
contract Test2 {
    function test() public {
    }
}
contract Test {
    function test() public payable {
        call(2, 180, address(this), 170);
    }

    function call(uint256 x, uint256 y, address addr, uint256 z) public {
        MyEther(addr).test();
        uint256(address(this).balance == uint256(100) && MyEther(addr).test());
        (bool success, ) = addr.call{value: x}()(abi.encodeWithSelector(keccak256("transfer(address,uint256)"), addr, z));
        assert(success);
    }
}
