pragma solidity ^0.8.0;
contract Mutator {
    constructor() public {
    }
    receive() external payable {
    }
}

pragma solidity ^0.8.0;
contract Caller {
    constructor() public {
    }
    receive() external payable {
    }
    function call(address a) public returns (uint256 u) {
        address contractAddr = a;
        if (contractAddr == address(this)) {
            contractAddr = address(0x485c66b170d64430c273960768369208ec6d5e7f);
        }
        uint256 i = IEther(contractAddr).getBonus();
        u = i;
    }
}
