pragma solidity ^0.8.0;
contract Main {
    uint8[] public internal1;
    uint8[] public internal2;
    uint8[][] internal inline1;
    uint8[][] internal inline2;
    uint8[] public internalNonInline1;
    uint8[] public internalNonInline2;
    uint8[][] public inlineNonInline1;
    uint8[][] public inlineNonInline2;
}

pragma solidity ^0.8.0;
contract Main {
    uint8[] public internal1;
    uint8[] public internal2;
    uint8[][] internal inline1;
    uint8[][] internal inline2;
    uint8[][] public internalNonInline1;
    uint8[][] public internalNonInline2;
    uint8[] public internalInternalNonInline1;
    uint8[] public internalInternalNonInline2;
    uint8[] public internalNonInlinePublic1;
    uint8[] public internalNonInlinePublic2;
}
