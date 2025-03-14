pragma solidity ^0.8.0;
contract Modul_prev{
        Modul modu = new Modul(2);
       Modul_prev(uint s) {
            modu.s = s;
        }


        Modul_prev() {
             modu = new Modul;
        }

        function fun(Modul p__x) public {

          modu = p__x;
        }
}
