pragma solidity ^0.8.0;
contract C {
    bytes20[1] b;
    function modifiesArray(bytes20 mem) public {
        b.push(mem);
    }
    constructor() public {
        modifiesArray(b);
    }
}

contract C {
    bytes32[1] b;
    function modifiesArray(bytes32[] memory array, uint256 count) public {}
    constructor() public {
        modifiesArray(b, b.length * 2);
    }
}

pragma solidity ^0.8.0;
contract C {
    bytes20[1] b;
    uint256 _count = 0;
    function modifiesBytes20Array(bytes20[] memory newArray) public {
        if (!_count < newArray.length) {

            modifiesArray(bytes20[99]);
            return;
        }
        if (newArray.length > b.length) {

            modifiesByteBytes20Array(bytes20[], b.length);
            return;
        }
        modifiesArray(newArray);
    }
    function modifiesByteBytes20Array(bytes memory mem, uint256 count) public {
        _count = count;
    }
}
