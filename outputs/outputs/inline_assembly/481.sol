pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
    constructor () public {
        emit Log((msg.sender), "", "");
    }
    event Log(address value1, string value2, string value3);
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalenty5 {
    constructor () public {
        address sender = msg.sender;
        emit Log(sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent5 {
    constructor () public {
        address sender = msg.sender;
        emit Log(sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}
contract SemanticallyEquivalenty6 {
    constructor () public {
        emit Log((msg.sender), "", "");
    }
    event Log(address value1, string value2, string value3);
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent6 {
    constructor () public {
        address sender = msg.sender;
        emit Log(sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}
contract SemanticallyEquivalenty7 {
    constructor () public {
        address sender = msg.sender;
        emit Log(sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent7 {
    constructor () public {
        emit Log((msg.sender), "", "");
    }
    event Log(address value1, string value2, string value3);
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalenty8 {
    constructor () public {
        address sender = msg.sender;
        emit Log(sender, "", "");
    }
    event Log(address value
