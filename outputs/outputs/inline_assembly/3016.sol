pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    uint public c;
    address z;

    constructor(uint p_c) public {
        c = p_c;
    }

    function setZ(address p_z) public {
        z = p_z;
    }

    function getZ() public view returns (uint) {
        require(c == z.call{value: address(this).balance}());
        return 0;
    }
}



pragma solidity 0.8.1;
