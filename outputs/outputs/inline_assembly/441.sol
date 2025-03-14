pragma solidity ^0.8.0;
contract SemanticallyEquivalentM15 {
    constructor () public {
        Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}
contract SemanticallyEquivalentM16 {
    constructor () public {
        SemanticallyEquivalentM15().Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}
contract SemanticallyEquivalentM17 {
    constructor () public {
        SemanticallyEquivalentM16().Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}
contract SemanticallyEquivalentM18 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}
contract SemanticallyEquivalentM19 {
    constructor () public {
        Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}
contract SemanticallyEquivalentM20 {
    constructor () public {
        bool isBad;
        emit Log(isBad, "", "");
    }
    event Log(bool isBad, string value2, string value3);
}
contract SemanticallyEquivalentM21 {
    constructor () public {
        bool isBad2;
        emit Log(isBad2, "", "");
    }
    event Log(bool isBad2, string value2, string value3);
}
