pragma solidity ^0.8.0;
contract m209 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }
    MyStruct public s;
    uint public i;
    constructor() public {
        s = s;
        i++;
        i += 2 + 3 * s.y;
        if (4!= 3 && false) revert();
        if (4!= s.y) s.x = s.y;
        s.x = s.z + 4;
        delete s.z;
        if (5 + 1!= s.y) s.y = s.x + s.x;
    }
}


pragma solidity ^0.8.0;
contract m35 {
    bool public res;
    constructor(uint16 j) public {
        res = j!= 1;
    }
}


pragma solidity ^0.8.0;
contract m36 {

    contract MyContract {

        uint public v;
        constructor(uint _v) public {
            v = _v;
        }

        function returnsByPointerAndReturn() -> bool returns (uint, uint) {
            (var v, ) = returnsDirectlyByPointerAndReturn();
            return (v, _getPointerByReturnedUInt());
        }

        function returnsByPointerAndReturn2() -> bool returns (uint) {
            (, uint) returned = returnsDirectlyByPointerAndReturn2();
            return returned;
        }

        function returnsIndirectlyByPointerAndReturn() -> uint {
            (uint y, uint z) = returnsIndirectlyByPointerAndReturn();
            return _getPointerByReturnedUInt();
        }

        function returnsIndirectlyByPointerAndReturn2() -> uint {
            (uint, uint d) = returnsIndirectlyByPointerAndReturn2();
            return _getPointerByReturnedUInt();
        }

        function returnsDirectlyByPointerAndReturn2() -> uint {
            return _getPointerByReturnedUInt();
        }

        function returnsDirectlyByPointerAndReturn() -> uint {
            uint y;
            (y, ) = returnsDirectlyByPointerAndReturn();
            return y;
        }

        function returnsBothByPointerAndReturn() -> bool {
            (, uint) a, (d, ) = returnsBothByPointerAndReturn();
            return a == _getPointerByReturnedUInt();
        }

        function returnsBothByPointerAnd
