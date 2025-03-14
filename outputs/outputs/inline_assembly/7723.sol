pragma solidity ^0.8.0;
contract L20 {
        uint i = 0;
        function sub(uint256 t) public pure onlyOnL1() {
                i = L1.sub(t, 1);
        }
}

pragma solidity ^0.8.0;
contract L20 {
        uint164 a;
        uint164 b;
        uint256 c;
        uint256 t;
        uint256 z;
        uint256 l20;
        address addr;

        function sub(uint256 _t) public pure {
                t += _t;
        }

        function safeSet(uint164 _a, uint164 _b) public view {
                if (_a== 0 && _b == 0) {
                        assembly {
                                switch i
                                case 0 {
                                        let x := mload(0x40)
                                        0 < x
        }
        }
        }


        function assertLessThanL1(uint256 _a, uint256 _b) public {
                if (_a < L1.sub(t, 1)) {

                        return assembly {
                                switch i
                                case 0 {
                                        l1 := 1
                                        i := 1
                                        i := i div 300
                                        i := sub(i, 1
                                        i := sub(i, _b
                                        l1 := b
                                        switch eq(i, 10000)
                                                case 1 {
                                                x := 1
                                                let ptr := mload('0x40')
                                                let cond := and(and(eq(mstore8(add(ptr, 0x20), 15), ptr), eq(t, 0)), eq(mem[ptr], 0))
