pragma solidity ^0.8.0;
contract Modul{
        uint public s;
        constructor(uint i) {
            s = 0;
        }
        function myFallback() public payable {

        }
}

contract Modul{
        function myfunction() public {
            Modul modul;
            modul.myFallback.value(5)();
        }
}
