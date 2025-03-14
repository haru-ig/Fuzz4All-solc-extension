pragma solidity ^0.8.0;
contract m88 {
    uint256 constant constantBytes = 100000000;
    uint g;
    constructor() { g = 64; }
    function update() external {
        g = g + constantBytes;
    }
}

pragma solidity ^0.8.0;
contract m89 {
    uint i;
    function update() public {
        i = i - 1;
    }
}

pragma solidity ^0.8.0;
contract m90 {
    address payable addr;
    constructor() payable { addr = payable(0x24cE021382fC03C5768317EEab06A2103c7114AF); }
    uint256 constant constantBytes = 1000;
    uint256 constant constantBytes2 = constantBytes*2;
    function update() external {
        addr.transfer(constantBytes2);
    }
}

pragma solidity ^0.8.0;
contract constant {
    uint constant constantBytes = 100000000;
    uint test;
    constructor() { test = 5; }
    function updateConstantFunction() public {
        test = test + constantBytes;
    }
    function readConstantFunction() public view returns (uint) {
        return constantBytes;
    }
}




pragma solidity ^0.8.0;
contract variable {
    uint constant constantBytes = 100000000;
    uint256 constant constantBytes2 = constantBytes*2;
    mapping (uint => uint) public constant bytesArray;
    constructor() { bytesArray[0] = constantBytes; }
    function updateBytesFunction() public {
        bytesArray[1] = constantBytes;
        bytesArray[2] = constantBytes2;
    }
    function getConstantFunction() public view returns (uint) {
        return constantBytes;
    }
    function callReadConstantFunction() public view returns (uint) {
        return readConstantFunction();
    }
}


/* You cannot add
