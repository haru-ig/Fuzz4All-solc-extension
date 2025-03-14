pragma solidity ^0.8.0;
contract D8 {
    uint256[] public a;
    uint256 a_0_1;
    constructor() public {
        for(uint256 i = 0 ; i < 1 ; i = 100) {
            a.push(0x0);
        }
        a_0_1 = 1;
    }
}

pragma solidity ^0.8.0;
contract E9 {

    uint256[] public a;
    uint256 a_0_4;
    constructor() public {
        a.push(0x0);
        for(uint256 i = 0 ; i < 4 ; i = 100) {
            a.push(0x0);
        }
        a_0_4 = 1;
    }

    function getMyArray() internal pure returns(uint256[] memory) {
        return a;
    };

    function getAItem(uint256 index) internal view returns(uint256) {
        return a[index];
    }

    function setAItem(uint256 index, uint256 value) internal {
        a[index] = value;
    }
}
pragma solidity ^0.8.0;
contract E8 {

    uint256[] public a;
    uint256 a_0_1;
    constructor() public {
        a.push(0x0);
        a.push(0x0);
        a_0_1 = 1;
    }

    function getMyArray() internal pure returns(uint256[] memory) {
        return a;
    };

    function getAItem(uint256 index) internal view returns(uint256) {
        return a[index];
    }

    function setAItem(uint256 index, uint256 value) internal {
        a[index] = value;
    }
}
