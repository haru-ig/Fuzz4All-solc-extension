pragma solidity ^0.8.0;
contract Modul{
        uint public modul = 5;
        constructor(uint i) {
            modul = i;
        }

        fallback() external {
            if (block.timestamp % 2 == 0)
                modul = modul * 2;
        }
}
contract Modul{
        uint public modul = 5;

        constructor() {

        }

        fallback() external {

        }

        function f() public {
            assembly {




                let result := f()
                sstore(0, result)
                return(0,0)
            }
        }

        function f() public {
            return modul;
        }

        modifier nop(uint i) { uint _; }

        fallback() external nop(1) {

            modul = modul + 1;
        }

}
```
