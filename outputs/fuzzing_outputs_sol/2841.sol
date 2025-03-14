pragma solidity ^0.8.0;
contract BadFallbackRecipient2x {
    Upgrader2x upg;
    fallback() public {
        upg.migrate(address(this));
    }
}
contract Contract1x {
    function f() public {
        Upgrader2x u = new Upgrader2x();
        u.migrate(address(this));
    }
}
contract Contract2x {
    fallback() public { }
    function f() public {
        Upgrader2x u = new Upgrader2x();
        u.migrate(address(this));
    }
}
contract Contract3x {
    bool a;
    function f() public {
        upg = new Upgrader2x();
        a = true;
        u = upg.migrate(address(this));
    }
    Upgrader2x upg;
    Upgrader2x u;
}
