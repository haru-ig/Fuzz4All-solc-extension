pragma solidity ^0.8.0;
contract Test30002 {
    address private oldAdr;
    address private newAdr;
    bytes32 public oldHash;
    bytes32 public newHash;
    constructor (address _oldAdr, address _newAdr) public {
        emit Log();
        oldAdr = _oldAdr;
        newAdr = _newAdr;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}

pragma solidity ^0.8.0;
contract Test30003 {
    bytes32 public aHash;
    address private aAddress;
    address private bAddress;
    bool public aFlag;
    bool public bFlag;
    bytes32 public bHash;
    constructor (uint256 a) public {
        emit Log();
        aAddress = msg.sender;
        aHash = keccak256(abi.encodePacked(a));
        aFlag = true;
        bAddress = aAddress;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}

pragma solidity ^0.8.0;
contract Test30004 {
    bytes32 public aHash;
    address private aAddress;
    address private bAddress;
    bool public aFlag;
    bool public bFlag;
    uint256 public aNum;
    uint256 public bNum;
    bytes32 public bHash;
    constructor (uint256 a, uint256 b) public {
        emit Log();
        aAddress = msg.sender;
        aHash = keccak256(abi.encodePacked(a));
        aFlag = true;
        bAddress = aAddress;
        bHash = keccak256(abi.encodePacked(b));
        bFlag = true;
        aNum = a;
        bNum = b;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}
