pragma solidity ^0.8.0;
contract Main {
    uint8[][] data1;
    uint8[][] data2;
    uint8[] nonInline1;
    uint8[] nonInline2;
    uint8 public internal1;
    uint8 public internal2;
    uint8 public nonPublic;
    uint8[][] internal inline1;
    uint8[][] internal inline2;
    uint8[] public nonInlinePublic1;
    uint8[] public nonInlinePublic2;
}
`
pragma solidity ^0.8.0;
contract Main {
    uint8[][][] data1;
    uint8[][][] data2;
    uint8[] nonInline1;
    uint8[] nonInline2;
    uint8 public internal1;
    uint8 public internal2;
    uint8 public nonPublic;
    uint8[][][] internal inline1;
    uint8[][][] internal inline2;
    uint8[] public nonInlinePublic1;
    uint8[] public nonInlinePublic2;
}
`
pragma solidity ^0.8.0;
contract Main {
    uint8[][][][] data1;
    uint8[][][][] data2;
    uint8[] nonInline1;
    uint8[] nonInline2;
    uint8 public internal1;
    uint8 public internal2;
    uint8 public nonPublic;
    uint8[][][][] internal inline1;
    uint8[][][][] internal inline2;
    uint8[] public nonInlinePublic1;
    uint8[] public nonInlinePublic2;
}

pragma solidity ^0.8.0;
contract Main {
    uint8[][] [3] data1;
    uint8[][] [3] data2;
    uint8[] nonInline1;
    uint8[] nonInline2;
    uint8 public internal1;
    uint8 public internal2;
    uint8 public nonPublic;
    uint8[][] [3] internal inline1;
    uint8[][] [3] internal inline2;
    uint8[] public nonInlinePublic1;
    uint8[] public nonInlinePublic2;
}
