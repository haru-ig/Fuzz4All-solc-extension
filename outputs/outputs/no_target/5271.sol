pragma solidity ^0.8.0;
contract MutatedExamples2 {
    function getUint16() pure private returns (uint16) {
        uint16 x = 0;
        x += 100;
        return 14;
    }
    function mutate() external returns (uint16) {
        return getUint16() + 50;
    }
}

pragma solidity ^0.8.0;
contract MutatedExamples1 {
    function getUint16() private pure returns (uint16) {
        uint16 x = 0;
        x += 100;
        return 14;
    }
    function mutate() private returns (uint16) {
        return getUint16() + 50;
    }
}

contract MutatedExamples {
    function getUint16() public pure returns (uint16) {
        uint16 x = 0;
        x += 100;
        return 14;
    }
    function mutate() pure public returns (uint16) {
        return getUint16() + 50;
    }
}
