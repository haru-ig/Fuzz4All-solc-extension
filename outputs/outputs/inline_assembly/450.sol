pragma solidity ^0.8.0;
contract SemanticallyEquivalentM20 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
    assembly {
        let x := mload(0x1000)
        mstore(0x1000, 0x365)
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentM26 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
    assembly {
        let x := mload(0x1000)
        mstore(0x1000, 0x365)
    }
    assembly {
        let y := mload(x)
    }
    assembly {
        let z := mload(0x1000)
    }
}
contract SemanticallyEquivalentM40 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
    assembly {
        let x := mload(0x1000)
        mstore(0x1000, 0x365)
        let y := mload(x)
    }
    assembly {
        let z := mload(0x1000)
        mstore(z, 0x365)
    }
}
contract SemanticallyEquivalentM46 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
    assembly {
        let x := mload(0x1000)
        mstore(0x1000, 0x365)
        let y := mload(x)
        let z := mload(0x1000)
        mstore(z, 0x365)
    }
}
contract SemanticallyEquivalentM100 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
    assembly {
        let x := mload(0x1000)
        mstore(0x1000, 0x365)
        let y := mload(x)
        let z := mload(0x1000)
        mstore(z, 0x365)
        let w := mload(y)
    }
    assembly {
        let x
