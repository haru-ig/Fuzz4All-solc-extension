pragma solidity ^0.8.0;
contract Main {
    address public owner;
    mapping (address => bool) public blackboxes;
    event BlackboxCreated (address indexed owner);
    constructor (address initialOwner) public { owner = initialOwner; }
    function createBlackbox () public { blackboxes[msg.sender] = true;}
    function updateBlackboxes (address indexed blackbox) public returns (bool) {
        if (blackboxes[blackbox]) return true;
        blackboxes[blackbox] = true;
        emit BlackboxCreated(blackbox);
        return true;
    }
}
contract Main {
    uint[] uints;
    constructor () {
        uints.push(10);
        uints.push(3);
        uints.push(8);
    }
}

pragma solidity ^0.8.0;
library ArrayHelper {
    uint[] public statics;

    constructor () {
        statics.push(8);
    }

    function push (uint value) public {
        if (statics.length == uint(bytes32(value))) return;
        statics.push(uint(bytes32(value)));
    }

    function remove_last () public {
        require(statics.length > 1, "Invalid length");
        uint length = statics.length;
        statics[length-1] = 0;
        statics[length-2] = 0;
        statics.pop();
        statics.pop();
    }
}
contract Main {
    ArrayHelper.uint8[20] public array;
    constructor () public {
        array.push(1);
    }
    function push (uint value) public {
        require(value == 0, "Only value 0 should be pushed to the array");
        array.push(value);
    }
}
