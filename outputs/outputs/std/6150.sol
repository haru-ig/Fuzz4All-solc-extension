pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent32 {
}
contract SemanticallyNotEquivalent41 {
}
contract SemanticsEquivalent53 {
    enum Color {Red, Orange, Yellow, Green, Blue};

    mapping(Color => bool) private mymapping;

    function () external payable {
        uint myUint;
        assembly { myUint := return(0) }
        for (Color j = Color.Green; ; j++) {
            myUint = (0 - myUint).add(1);
            uint8 a = colorToInt256(j);
            if (a == 0) {
                break;
            }
            bool b;
            assembly {
                let c := mload(add(myUint, 0x20))
                b := eq(and(c, 1), 1)
            }
            assert(b);
        }
    }
}
contract SemanticsEquivalent53 {
    enum Color {Red, Orange, Yellow, Green, Blue};

    mapping(Color => bool) internal public mymapping;

    function () public payable {
        uint myUint;
        assembly { myUint := return(0) }
        for (Color j = Color.Green; ; j++) {
            myUint = (0 - myUint).add(1);
            uint8 a = colorToInt256(j);
            if (a == 0) {
                break;
            }
            bool b;
            assembly {
                let c := mload(add(myUint, 0x20))
                b := eq(and(c, 1), 1)
            }
            assert(b);
        }
    }
}
