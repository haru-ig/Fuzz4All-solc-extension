pragma solidity ^0.8.0;
contract MutatedGeneration1 {
    function f()
        public
        pure
        returns (uint8 x, uint8 y)
    {
        x = 2;
        y = 3;
    }
}

pragma solidity ^0.8.0;
contract MutatedGeneration2 {
    function f()
        public
        pure
        returns (uint8 x, uint8 y)
    {
        uint16 randomX = 255;
        uint16 randomY = 65535 << 8;
        return (randomX, randomY);
    }
}
