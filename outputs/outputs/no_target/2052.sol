pragma solidity ^0.8.0;
contract Modification2 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 2;
        b = _b;
    }
}
contract ModificationRevert4 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 2;
        a += 170;
        b = b;
    }
}
contract ModificationRevert5 {
    uint256 public a;
    string public b;
    constructor(bytes memory _b) public {
        a = 2;
        a += 170;
        constructor(b) public {
            a += 170;
            a += 230;
            a += 170;
        }
    }
}
contract ModificationRevert6 {
    uint256 public a;
    string public b;
    struct InnerStructure {
        string x;
        mapping(address => InnerStructure) y;
    }
    constructor(InnerStructure memory _i) public {
        a = 2;
        mapping (address => InnerStructure) memory outerMap =  _i.y;
        a = a + outerMap[address(this)].x;
        b = _i.x;
    }
}
contract ModificationRevert7 {
    uint256 public a;
    string public b;
    constructor (bytes memory _b) public {
        a = 2;
        a+=170;
        emit LogEvent({
            a: _b
        });
    }
   struct LogEvent {
        bytes20 a;
    }

    function LogEvent(LogEvent memory _logEvent) public {
        a = bytes20(keccak256(address(this)));
    }
}
