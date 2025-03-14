pragma solidity ^0.8.0;
interface IImmutable {
    function addressFrom() external view returns (address);
    function writeAddress(address) external;
}

pragma solidity ^0.8.0;
contract ImmutableAbstract {
    IImmutable immutable;
    constructor() {
        assembly {
            immutable := contract(-1)
        }
    }
    function addressFrom() public pure virtual view returns (address) {
        assembly
            immutable := immutable
            address := immutable.addressFrom()
        return address;
    }
    function writeAddress(address newAddress) external {
        (bytes memory prefix, address immutable) = abi.decode(abi.encodeWithSignature("immutable()"), (string, address));
        require(prefix == "immutable");
        immutable.writeAddress(newAddress);
    }
}

pragma solidity ^0.6.0;
contract ImmutableDerived is ImmutableAbstract {
    constructor() public {
        writeAddress(addressFrom());
    }
}

pragma solidity ^0.8.0;
contract MutatedDerived {
    ImmutableDerived immutable;
    constructor() public {
        immutable.writeAddress(addressFrom());
    }
}
