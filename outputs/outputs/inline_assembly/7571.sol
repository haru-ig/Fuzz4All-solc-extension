pragma solidity ^0.8.0;
contract Example is InlineAsm {
    uint constant initialx = 32;
    assembly {
        initialx := initialx + 42
    }
    uint constant initialy = 40;
    assembly {
        initialy := initialy + 0x209b189b9cf20986105a9379cf209413a97446b3f9b7a9b771d03d9bc77e3a76f01
    }
    uint constant initialresult = initialx + initialy + initialx + initialy;
    uint x = 0x1234;
    assembly {
        x := x + 0x1b
    }
    uint result = 0;
    assembly {
        result := 0x1234 + initialx + initialy
    }
    assembly {
        result := 0x1234 + initialx + initialy
    }
}
