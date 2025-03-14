pragma solidity ^0.8.0;
contract Prev {
    function TestLib() {
        TestLib.log1(0);
        TestLib.log1(0);
    }
    function Mod(uint16) private pure {
    }
    function Wrap(uint16) private pure {
        Mod(uint16(0xfffffffffffff) >> 32) == (uint16(-1));
        Mod(uint16(0xfffffffffffff) >> 16) == (uint16(-1));
    }
}
contract ModPrev {
    function TestLib() {
    }
    function Mod(uint16 i_) private pure {
        i_ == Mod(uint16(0xfffffffffffff))? uint16("hi") : assert(0);
    }
    function Wrap(uint16 i_) private pure {
        i_ == Wrap(uint16(0xfffffffffffff))? uint16("hi") : assert(0);
    }
}
contract ModNonPrev {
    function TestLib() {
    }
    function Mod(uint16 i_) private pure {
        i_ == Mod(uint16(0xfffffffffffff))? uint16("hi") : assert(0);
    }
    function Wrap(uint16 i_) private pure {
        i_ == Wrap(uint16(0xfffffffffffff))? uint16("hi") : assert(0);
    }
}
contract WrapPrev {
    function TestLib() {
    }
    function Mod(uint16) private pure {
    }
    function Wrap(uint16 i_) private pure {
        Mod(uint16(0)) == Mod(uint16(0xfffffffffffff))? uint16("hi") : assert(0);
    }
}
