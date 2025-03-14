pragma solidity ^0.8.0;
contract EquivalentABIv08AbiSemanticallyDifferentImplementation {
    function mintA () public { }
    function mintB () public { }
    function mintC () public { }
}
pragma solidity ^0.8.0;
contract EquivalentABIv08AbiSemanticallyDifferentInterfaceWithDifferentImplementation {
    function mintA () public { }
    function mintB () public { }
    function mintC () public { }
}
pragma solidity ^0.8.0;
contract EquivalentABIv08AbiCompatible {
    functionmintA () public { }
    functionmintB () public { }
    functionmintC () public { }
}
pragma solidity ^0.8.0;
contract EquivalentABIv08AbiFull {
    functionmintA () public { }
    functionmintB () public { }
    functionmintC () public { }
}
